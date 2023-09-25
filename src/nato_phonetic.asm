#include "instructions.asm"

#bank ram

#bank rom

start:
        mov # 0xFF, sp
        outmode text

        mov # (message`8), b ; load B with low byte of main string start address
        mov # (message >> 8), x ; load X with high byte of main string start address

    .print_loop:
            mov (x, b), a ; load a with character

            push x ; save current main string address high byte on stack (destroyed)
            push b ; save current main string address high byte on stack (destroyed)

            or # 0x00, a ; test A for zero (Z flag set : '\0' reached in main string)

            jz .halt ; if '\0' was reached, halt (IF CHANGED TO STHG ELSE THAN HLT, NEED TO BALANCE STACK)

            mov a, x ; transfer character to X to use character as index into addr index (16, x)

            mov (lsb_index, x), b ; load B with low byte of address of replacement string
            mov (msb_index, x), x ; load X with high byte of address of replacement string (overwrites X, don't care)

        ..replacement_loop:
                mov (x, b), a ; load A with character of replacement string

                push b ; save low byte of address, as is destroyed
                or # 0x00, a ; test A for zero (Z flag set : '\0' reached in replacement string)
                pop b ; get low byte of address back (keep stack balanced before conditional jump, even if doesn't serve on one branch)

                jz ..end_replacement_loop

                out a ; output replacement character

                add # 0x01, b ; increment lower byte of address
                ; (replacement string must not cross a page boundary)

                jmp ..replacement_loop

        ..end_replacement_loop:
            pop b ; get current main string address low byte from stack
            add # 0x01, b ; increment low byte of address

            pop x ; get current main string address high byte from stack (keep it balanced, no matter the branch)

            jnc .print_loop ; if no carry from add, do not increment high byte -> loop early

            inc x ; increment high byte
            jmp .print_loop ; loop

    .halt:
        hlt

message: ; need not be aligned to page (thanks to (x, b) addressing)
    #d ascii("Alpha\nBravo\nCharlie\nDelta\nEcho\nFoxtrot\nGolf\nHotel\nIndia\nJuliett\nKilo\nLima\nMike\n"); continued
    #d ascii ("November\nOscar\nPapa\nQuebec\nRomeo\nSierra\nTango\nUniform\nVictor\nWhiskey\nYankee\nZulu\0")

#align 0x100*8;(bits) (start of page, for (16, x) addressing)
lsb_index:
    #include "nato_phonetic_data/lsb_index.asm"

#align 0x100*8;(bits) (start of page, for (16, x) addressing)
msb_index:
    #include "nato_phonetic_data/msb_index.asm"

replacement_text: ; need not be aligned as a whole; the individual strings/bytes (including the end '\0') MUST fit, indivually, on ONE PAGE (DO NOT CROSS PAGE BOUNDARY)
    #include "nato_phonetic_data/replacement_text.asm"




