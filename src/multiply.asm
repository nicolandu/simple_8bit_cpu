#include "instructions.asm"

#bank ram
    multiplicand: ; if possible, largest number
        #res 2
    multiplier: ; if possible, smallest number 
        #res 2
    mul_mask:
        #res 2 ; 16-bit mask

#bank rom
    start:
            mov # 0xFF, sp ; initialize SP
        
            outmode ux ; display as unsigned hex

            mov # 0x12, a
            mov a, multiplicand ; low byte

            mov # 0x34, a
            mov a, (multiplicand + 1) ; high byte

            mov # 0x05, a
            mov a, multiplier

            mov # 0x00, a ; just to make sure the subroutine doesn't use A's initial value

            jsr multiply_16x8to16
            
            out x ; output high byte of result
            out a ; output low byte of result

            hlt

    multiply_8x8to8: ; multiplies (multiplicand, 1 byte) by (multiplier, 1 byte), returns product (1 byte) via A (destroys B, X, flags, multiplicand)
            push # 0 ; setup result
            mov # 0b1, b ; load multiplication mask into B
    
        .loop:
            mov multiplier, a ; multiplier into A
        
            and b, a ; test corresponding bit of multiplier
            mov x, mul_mask ; save mask
            jz .skip_add
        
                ; if corresponding bit is set in multiplier:
                pop a
                add multiplicand, a
                push a

        .skip_add:
            rol multiplicand, 0 ; rotate multiplicand left to double multiplicand for next pass

            mov mul_mask,x ; move mask back to B
            rol b, 0 ; shift mask left (test next multiplier bit)
            jnz .loop

            pop a ; return result in A
            rts



    multiply_8x8to16: ; multiplies (multiplicand, 1 byte) by (multiplier, 1 byte), returns product (2 bytes) via A (low byte) and X (high byte) (destroys B, flags, multiplicand) 
            mov # 0, a
            push a ; zero initial result high byte
            push a ; zero initial result low byte

            mov a, (multiplicand + 1) ; zero the multiplicand's high byte

            mov # 0b1, b ; load multiplication mask into B
    
        .loop:
            mov multiplier, a
        
            and b, a ; test corresponding bit of multiplier
            mov b, mul_mask ; save mask
            jz .skip_add ; do not increase result if corresponding bit of multiplier is 0
        
                ; if corresponding bit is set in multiplier:
                pop a ; pop low byte of result
                add multiplicand, a ; add low byte of multiplicand to A (result low)

                pop b ; pop high byte of result
                push a ; push low byte of result

                addc (multiplicand + 1), b ; add high byte of multiplicand WITH CARRY to B (result high)

                pop a ; pop low byte to re-establish stack order
                push b ; push high byte
                push a ; push low byte

        .skip_add:
            rol multiplicand, 0 ; rotate multiplicand low byte left to double multiplicand for next pass
            rolc (multiplicand+1) ; rotate multiplicand high byte left with carry from low byte

            mov mul_mask, b ; move mask back into B
            rol b, 0 ; shift mask left (test next multiplier bit)
            jnz .loop ; loop until mask becomes 0 (bit shifted out)

            pop a ; return low byte in A
            pop x ; return high byte in X

            rts


    multiply_16x8to16: ; multiplies (multiplicand, 2 bytes) by (multiplier, 1 byte), returns product (2 bytes) via A (low byte) and X (high byte) (destroys B, flags, multiplicand) 
            push # 0 ; zero initial result high byte
            push # 0 ; zero initial result low byte

            mov # 0b1, b ; load multiplication mask into B
    
        .loop:
            mov multiplier, a
        
            and b, a ; test corresponding bit of multiplier
            mov b, mul_mask ; save mask
            jz .skip_add ; do not increase result if corresponding bit of multiplier is 0
        
                ; if corresponding bit is set in multiplier:
                pop a ; pop low byte of result
                add multiplicand, a ; add low byte of multiplicand to A (result low)

                pop b ; pop high byte of result
                push a ; push low byte of result

                addc (multiplicand + 1), b ; add high byte of multiplicand WITH CARRY to B (result high)

                pop a ; pop low byte to re-establish stack order
                push b ; push high byte
                push a ; push low byte

        .skip_add:
            rol multiplicand, 0 ; rotate multiplicand low byte left to double multiplicand for next pass
            rolc (multiplicand+1) ; rotate multiplicand high byte left with carry from low byte

            mov mul_mask, b ; move mask back into B
            rol b, 0 ; shift mask left (test next multiplier bit)
            jnz .loop ; loop until mask becomes 0 (bit shifted out)

            pop a ; return low byte in A
            pop x ; return high byte in X

            rts


    multiply_16x16to16: ; multiplies (multiplicand, 2 bytes) by (multiplier, 2 bytes), returns product (2 bytes) via A (low byte) and X (high byte) (destroys B, flags, multiplicand) 
            mov # 0, a
            push a ; zero initial result low byte
            mov a, x ; zero initial result high byte (X register)

            mov a, (mul_mask + 1) ; zero mask high byte

            mov # 0b1, a ; setup multiplication mask in memory

            mov a, mul_mask
    
        .loop:
            mov multiplier, a
        
            and mul_mask, a ; test corresponding bit of multiplier low byte
            jnz .add ; increase result straight away if corresponding bit of multiplier is set (1), need not test high byte (only 1 bit of mask is a 1)


                mov (multiplier + 1), a
                
                and (mul_mask + 1), a ; test corresponding bit of multiplier high byte
                jz .skip_add ; do not increase result if corresponding bit not set

        .add:
            ; if corresponding bit is set in multiplier:
            pop a ; pop low byte of result
            add multiplicand, a ; add low byte of multiplicand to A (result low)
            push a ; push low byte of result

            mov x, a ; move result's high byte (X) to A
            addc (multiplicand + 1), a ; add high byte of multiplicand WITH CARRY to A (result's high byte)
            mov a, x ; move result's high byte (A) to X

        .skip_add:
            rol multiplicand, 0 ; rotate multiplicand low byte left to double multiplicand for next pass
            rolc (multiplicand + 1) ; rotate multiplicand high byte left with carry from low byte

            rol mul_mask, 0 ; shift mask low byte left (to test next multiplier bit)

            jnz .loop ; if a bit of the mask's low byte is set, we're not done : loop again

            ; else : shift high byte

            rolc (mul_mask + 1) ; shift mask high byte left (to test next multiplier bit) if low byte was 0 (need not set carry after first shift)

            jnz .loop ; if a bit of the mask's high byte is set, we're not done : loop again

            ; if both bytes are zeroes, we're done : set registers to return value, then rts

            pop a ; return low byte in A
            
            ; high byte already in X

            rts
