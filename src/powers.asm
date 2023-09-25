#include "instructions.asm"

#bank ram
    base:
        #res 1 ; 8 bit
    exponent:
        #res 1 ; 8 bit
    result:
        #res 2 ; 16 bit, used internally
    mul_mask:
        #res 1 ; 8 bit mask, used internally

#bank rom
    start:
        mov # 0xFF, sp

        mov # 0xFF, a ; base
        mov a, base

        mov # 0xFF, a ; exponent
        mov a, exponent

        jsr exponentiate

        mov (result + 1), a
        out a ; output high byte

        mov result, a
        out a ; output low byte

        hlt

    exponentiate: ; exponentiates [base, 1 byte] by [exponent, 1 byte], returns result (2 bytes) via [result] (destroys B, exponent)
            mov exponent, a
            
            mov # 0x00, x ; used in either branch (avoid code duplication)

            sub # 0x01, a ; subtract 1 from exponent, if it overflowed, it was == 0 : return 1
            jc .skip_early_return ; if carry not set (underflow), return 1, else move on

                mov # 0x01, a
                mov a, result ; set result low byte to 0x01

                mov x, (result + 1) ; set result high byte to 0x00
                rts ; return

        .skip_early_return:
            mov a, exponent ; store result of decrementation

            mov base, a
            mov a, result ; set [result] low byte to [base] ([result] is preset to [base] and [exponent] is pre-decremented to save a multiplication)

            mov x, (result + 1) ; set [result] high byte to 0x00 (zero-extend [base])
            
        .multiply: ; multiply multiplicand (partial product) by base
                push # 0 ; zero initial result high byte
                push # 0 ; zero initial result low byte

                mov # 0b1, b ; load multiplication mask into B
        
            ..loop:
                mov base, a ; used as multiplier
            
                and b, a ; test corresponding bit of multiplier
                mov b, mul_mask ; save mask
                jz ..skip_add ; do not increase result if corresponding bit of multiplier is 0
            
                    ; if corresponding bit is set in multiplier:
                    pop a ; pop low byte of result
                    add result, a ; add low byte of multiplicand to A (result low)

                    pop b ; pop high byte of result
                    push a ; push low byte of result

                    addc (result + 1), b ; add high byte of multiplicand WITH CARRY to B (result high)

                    pop a ; pop low byte to re-establish stack order
                    push b ; push high byte
                    push a ; push low byte

            ..skip_add:
                rol result, 0 ; rotate multiplicand low byte left to double multiplicand for next pass
                rolc (result+1) ; rotate multiplicand high byte left with carry from low byte

                mov mul_mask, b ; move mask back into B
                rol b, 0 ; shift mask left (test next multiplier bit)
                jnz ..loop ; loop until mask becomes 0 (bit shifted out)

                pop a
                mov a, result ; store low byte for next iteration

                pop a
                mov a, (result + 1) ; store high byte for next iteration
        
        mov exponent, a
        sub # 0x01, a ; decrement exponent
        mov a, exponent ; store result of decrementation

        jnz .multiply ; if non-zero, continue multiplying

        rts ; if zero, return