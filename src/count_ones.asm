#include "instructions.asm"

#bank ram
    value: ; 16 bit
        #res 2

#bank rom
    start:
        mov # 0b0111_0101, a
        mov a, value ; low byte

        mov # 0b1010_0000, a
        mov a, (value + 1) ; high byte

        jsr count_ones

        out x
        hlt

    count_ones: ; count ones in the binary representation of [value, 2 bytes], returns result via X (destroys B, X, value)
            mov # 0, x ; initialize count to 0

        .loop_lsb: ; count ones in least significant byte
                rol value, 0

                jnc ..skip_increment ; if MS bit was 0, do not increment count
                    inc x ; increment count (does not set flags)

            ..skip_increment:
                jnz .loop_lsb ; if byte is non-zero (i.e. bits are left to count, loop)

        .loop_msb: ; count ones in most significant byte
            rol (value+1), 0

                jnc ..skip_increment ; if MS bit was 0, do not increment count
                    inc x ; increment count (does not set flags)

            ..skip_increment:
                jnz .loop_lsb ; if byte is non-zero (i.e. bits are left to count, loop)
        
        rts