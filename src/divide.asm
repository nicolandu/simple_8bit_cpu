#include "instructions.asm"

DIVIDEND = 0x579B
DIVISOR = 0x0246

#bank ram

    dividend:
        #res 2 ; 16-bit, if possible larger than divisor (runs faster)

    divisor:
        #res 2 ; 16-bit, if possible smaller than dividend (runs faster)

    quotient:
        #res 2 ; 16-bit

    remainder:
        #res 2 ; 16-bit, also used as scratchpad for shifting MSBs of dividend

#bank rom

    start:
        mov # 0xFF, sp

        mov # (DIVIDEND & 0xFF), a
        mov a, (dividend)

        mov # (DIVIDEND >> 8), a
        mov a, (dividend+1)

        mov # (DIVISOR & 0xFF), a
        mov a, (divisor)
        
        mov # (DIVISOR >> 8), a
        mov a, (divisor+1)

        jsr divide_16x16to16

        out (quotient+1)
        out quotient
        out (remainder+1)
        out remainder
        
        hlt

    divide_16x16to16: ; divides (dividend, 2 bytes) by (divisor, 2 bytes), returns (quotient, 2 bytes) and (remainder, 2 bytes), (destroys A, B, X, flags, dividend)
        mov # 0x00, a
        
        ; we don't care about the initial value of the quotient, as it will entirely be composed of new bits shifted in
        mov a, remainder ; zero out remainder
        mov a, (remainder+1)

        mov # 0x10, x ; loop counter, 16 (0x10) iterations, 1 per bit
        
        .divloop:
                rolc dividend ; don't care about the bit shifted in, skip setting/clearing carry
                rolc (dividend+1) ; ripple into high byte

                rolc remainder ; ripple into scratchpad
                rolc (remainder+1) ; ripple into high byte


                mov (remainder+1), a
                cmp (divisor+1), a ; compare divisor high byte to high byte of MSBs of dividend (located in remainder)

                jnc ..shift_quotient_0 ; if high byte of MSBs of dividend < high byte of divisor, divisor doesn't fit in it => skip low byte comparison and shift a 0 into quotient
                jnz ..subtract_divisor ; if high byte of MSBs of dividend > high byte of divisor, divisor fits in it => skip low byte comparison and subtract divisor from MSBs of dividend

                    ; else, high byte of MSBs == high byte of divisor => check low bytes for comparison
                    mov remainder, a
                    cmp divisor, a ; compare divisor low byte to low byte of MSBs of dividend (located in remainder)

                    jnc ..shift_quotient_0 ; if low byte of MSBs < low byte of divisor, divisor doesn't fit in divisor => shift a 0 into quotient
                
            ..subtract_divisor:
                mov remainder, a
                sub divisor, a ; remainder low byte -= divisor low byte
                mov a, remainder

                mov (remainder+1), a
                subc (divisor+1), a ; remainder high byte -= divisor high byte (with carry)
                mov a, (remainder+1)

            ..shift_quotient_1:
                rol quotient, 1 ; shift a 1 into quotient
                jmp ..shift_quotient_msb ; continue with MSB shift

            ..shift_quotient_0:
                rol quotient, 0 ; shift a 0 into quotient

            ..shift_quotient_msb:
                rolc (quotient+1) ; ripple into high byte
                


                mov x, a ; transfer loop counter to A
                sub # 0x01, a
                mov a, x ; store loop counter in X

                jnz .divloop ; loop again if counter > 0

        rts
