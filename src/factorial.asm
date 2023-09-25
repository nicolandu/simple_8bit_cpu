#include "instructions.asm"

FAC_TO_COMPUTE = 0x14 ; max factorial that fits in 64 bits (larger would be truncated)

#bank ram
    result:
        #res 8 ; 64-bit
    partial_product:
        #res 8 ; 64-bit
    value:
        #res 1 ; 8-bit, (largest computable factorial < 2^64) == 20 (0x14)

#bank rom

start:
    mov # 0xFF, sp

    mov # FAC_TO_COMPUTE, a
    mov a, value ; compute (FAC_TO_COMPUTE)!

    jsr factorial

    mov # 0x07, x ; used for starting index, is decremented to output each byte

    .output_loop:
        out (0x00, x) ; output byte of result (0x07 to 0x00)

        mov x, a ; to decrement X with flags
        sub # 0x01, a ; decrement counter
        mov a, x ; move counter back to X

        jc .output_loop ; if counter didn't wrap around (is still >= 0), continue
    .halt:
    hlt

factorial: ; computes factorial of (value, 1 byte), returns via (result, 8 bytes) (destroys A, B, X, value)
    
    mov # 0x00, a ; preset A for resetting addresses

    mov # (partial_product + 7), x ; to reset both partial_product and result (decremented until 0)

    .reset_loop:
        mov a, (0x00, x) ; store A (0x00) in correct byte of value

        swap a, x ; to decrement X with flags (X is now 0x00)
        sub # 0x01, a ; decrement loop counter
        swap a, x ; move counter back to X (A is still 0x00)

        jc .reset_loop ; if counter didn't wrap around (currently >= 0), continue

    ; partial_product and result are now == 0x00
    mov value, a
    mov a, partial_product ; initialize partial product to value for first multiplication

    sub # 0x01, a ; decrement value (serves both to set start multiplier and to return early (0! == 1, 1! == 1))
    jnc .return_one ; if underflowed : value was 0 (0! == 1, so return 1)
    jz .return_one ; if now zero : value was 1 (1! == 1, so return 1)

    cmp # 0x01, a ; test for multiplier of 1
    jz .return_two ; return 2 (handles edge case)

        mov a, value ; store new (decremented) multiplier

        .factorial_loop:
            mov # 0b1, b ; load multiplication mask into B

            ..multiplication_loop: ; (value) is used as multiplier, (partial_product) is used as multiplicand
                mov value, a

                and b, a ; test corresponding bit of multiplier

                mov b, x ; save mask to X, as B will be destroyed

                jz ...skip_add ; do not increase result if corresponding bit of multiplier is 0

                    ; if corresponding bit of multiplier is 1, add multiplicand (partial_product) to result
                    
                    mov result, a
                    add partial_product, a ; byte 0 (low byte) => no carry in
                    mov a, result


                    mov (result + 1), a
                    addc (partial_product + 1), a ; byte 1 => ripple carry from byte 0
                    mov a, (result + 1)

                    mov (result + 2), a
                    addc (partial_product + 2), a ; byte 2 => ripple carry from previous byte
                    mov a, (result + 2)

                    mov (result + 3), a
                    addc (partial_product + 3), a ; byte 3 => also ripple carry
                    mov a, (result + 3)

                    mov (result + 4), a
                    addc (partial_product + 4), a ; byte 4 => also ripple carry
                    mov a, (result + 4)

                    mov (result + 5), a
                    addc (partial_product + 5), a ; byte 5 => also ripple carry
                    mov a, (result + 5)

                    mov (result + 6), a
                    addc (partial_product + 6), a ; byte 6 => also ripple carry
                    mov a, (result + 6)

                    mov (result + 7), a
                    addc (partial_product + 7), a ; byte 7 => also ripple carry
                    mov a, (result + 7)

                ...skip_add:

                rol partial_product, 0 ; rotate multiplicand low byte left (insert 0) to double multiplicand for next pass (next bit of multiplier)

                rolc (partial_product + 1) ; rotate multiplicand higher bytes left with carry from previous byte
                rolc (partial_product + 2) ; idem
                rolc (partial_product + 3) ; idem
                rolc (partial_product + 4) ; idem
                rolc (partial_product + 5) ; idem
                rolc (partial_product + 6) ; idem
                rolc (partial_product + 7) ; idem

                mov x, b ; move mask (X) back into B
                rol b, 0 ; shift mask left (test next multiplier bit)
                jnz ..multiplication_loop ; loop until mask becomes 0 (bit shifted out)
            
            ; multiplication done : decrement multiplier (value, 1 byte) and test for exit condition

            mov value, a
            sub # 0x01, a ; decrement multiplier (edge case of 2! already handled)

            cmp # 0x01, a
            jz .return ; return if new multiplier is now == 1 (if so, pointless to iterate once more)

                ; if multiplier > 1:
                mov a, value ; store new multiplier

                ; move (result, 8 bytes) (product) to (partial_product, 8 bytes) for next iteration
                
                mov result, a
                mov a, partial_product

                mov (result + 1), a
                mov a, (partial_product + 1)

                mov (result + 2), a
                mov a, (partial_product + 2)

                mov (result + 3), a
                mov a, (partial_product + 3)

                mov (result + 4), a
                mov a, (partial_product + 4)

                mov (result + 5), a
                mov a, (partial_product + 5)

                mov (result + 6), a
                mov a, (partial_product + 6)

                mov (result + 7), a
                mov a, (partial_product + 7)



                mov # 0x00, a
                
                mov a, result ; reset result to zero for next multiplication
                mov a, (result + 1)
                mov a, (result + 2)
                mov a, (result + 3)
                mov a, (result + 4)
                mov a, (result + 5)
                mov a, (result + 6)
                mov a, (result + 7)


                jmp .factorial_loop ; continue to multiply
            
    .return_one:
    mov # 0x01, a
    mov a, result ; 7 high bytes are already zeroes
    rts ; exit now

    .return_two:
    mov # 0x02, a
    mov a, result ; 7 high bytes are already zeroes

    .return: ; used for both return_one and the usual return
    rts