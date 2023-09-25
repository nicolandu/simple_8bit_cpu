#include "instructions.asm"

#bank ram

#bank rom

; *** Uses (16, x) addressing mode, which is limited to a single page ***
start:
        outmode text
        mov # 0x00, x ; starting address in the page
    .loop:
        mov (string, x), a ; load a with character

        or # 0x00, a ; test A for zero (Z flag set : '\0' reached)

        jz .halt ; if '\0' was reached, halt

        out a ; output character
        inc x ; next character

        jmp .loop

    .halt:
        hlt

#align 0x100*8;(bits) (align to start of page to index from 0, but it could be any starting index : -if it stays on a single page using (16, x) addressing, or -if (x, b) addressing mode is used)
string:
        #d ascii("Hello, world!\0")
    .end: ; just to see the end address in debug mode