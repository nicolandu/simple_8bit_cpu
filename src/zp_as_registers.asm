#include "instructions.asm"

#bank ram
    r0:
        #res 1
    r1:
        #res 1
    r2:
        #res 1
    r3:
        #res 1
    r4:
        #res 1
    r5:
        #res 1
    r6:
        #res 1
    r7:
        #res 1
    r8:
        #res 1
    r9:
        #res 1
    r10:
        #res 1
    r11:
        #res 1
    r12:
        #res 1
    r13:
        #res 1
    r14:
        #res 1
    r15:
        #res 1

#bank rom

start:
    mov # r15, x ; used for starting index, is decremented
    mov # 0x00, a

    .reset_register_loop:
        mov a, (0x00, x) ; store A (== 0x00) in corresponding register (0x0000+x)

        swap a, x ; to decrement X with flags
        sub # 0x01, a ; decrement counter
        swap a, x ; move counter back to X and #0x00 to A

        jc .reset_register_loop ; if counter didn't wrap around, continue

    .tests:
        mov # 0x01, a
        mov a, r14

        mov # 0x03, a
        mov a, r2

        mov r14, a
        add r2, a
        mov a, r5

        out r14
        out r2
        out r5

    .halt:
        hlt

