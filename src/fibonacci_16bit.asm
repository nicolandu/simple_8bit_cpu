#include "instructions.asm"

#bank ram
    
    r0:
        #res 2 ; 16-bit in-memory "registers"
    r1:
        #res 2
    r2:
        #res 2
    bcd:
        #res 5 ; 1 BCD digit per byte, ones place first (+0), ten thousands place last(+4)

#bank rom

start:

    mov # 0xFF, sp
    outmode text

    ; Initialize r0 and r1

    mov # 0x00, a
    mov a, r0
    mov a, (r0+1)
    ; r1 low byte starts at 1, initialize it after
    mov a, (r1+1)
    

    mov # 0x01, a ; initialize r1 low byte
    mov a, r1
    

    ; Output disclaimer + first 2 terms

    mov # (string & 0x00FF), x ; load low byte of string into X for (16,x) indexing within a single page

    .string_output:
        mov (string & 0xFF00, x), a ; take address of start of page, as string isn't aligned to a page boundary

        or # 0x00, a ; test char for '\0'
        jz .end_string_output ; stop outputting if '\0' encountered

        out a ; output character
        
        inc x ; increment counter
        jmp .string_output

    .end_string_output:

    .loop:

        mov r0, a
        add r1, a ; low byte addition
        mov a, r2

        mov (r0+1), a
        addc (r1+1), a ; high byte addition, ripple carry from low byte
        mov a, (r2+1)
        
        
        jc .halt ; if upper byte overflowed (now out of range of 16-bit unsigned int), halt (prevent erroneous output)
        

        ; Shift terms : make current values the "previous" ones for next iteration
        
        mov r1, a ; r1 low to r0 low
        mov a, r0
        
        mov (r1+1), a ; r1 high to r0 high
        mov a, (r0+1)
        
        
        mov r2, a ; r2 low to r1 low
        mov a, r1
        
        mov (r2+1), a ; r2 high to r1 high
        mov a, (r1+1)


    ; DOUBLE DABBLE ALOGRITHM, 16-bit, uses (bcd, 5 bytes) as output, (r2, 2 bytes, IS DESTROYED and IS OUTPUT), is used as input

        push # 0x10 ; 16 bits to shift out, 1 iteration per bit (loop counter on stack)

        mov # 0x00, a

        mov a, bcd ; initialize BCD digits to 0
        mov a, (bcd+1)
        mov a, (bcd+2)
        mov a, (bcd+3)
        mov a, (bcd+4)

        ..double_dabble_loop:

            mov bcd, x ; load current ones place into X
            mov (add_table, x), a ; add 0x7B if >= 5 to force rollover (use lookup table)
            mov a, bcd ; store new ones place

            mov (bcd+1), x ; load current tens place into X
            mov (add_table, x), a ; add 0x7B if >= 5 to force rollover (use lookup table)
            mov a, (bcd+1) ; store new tens place

            mov (bcd+2), x ; load current hundreds place into X
            mov (add_table, x), a ; add 0x7B if >= 5 to force rollover (use lookup table)
            mov a, (bcd+2) ; store new hundreds place

            mov (bcd+3), x ; load current thousands place into X
            mov (add_table, x), a ; add 0x7B if >= 5 to force rollover (use lookup table)
            mov a, (bcd+3) ; store new thousands place

            mov (bcd+4), x ; load current ten thousands place into X
            mov (add_table, x), a ; add 0x7B if >= 5 to force rollover (use lookup table)
            mov a, (bcd+4) ; store new ten thousands place


            ; SHIFT VALUE
            rolc r2 ; shift r2 out 1 bit (don't care about the bit shifted in, so don't preset carry)
            rolc (r2+1) ; propagate shift to high byte of r2

            rolc bcd ; propagate to ones place
            rolc (bcd+1) ; propagate to tens place
            rolc (bcd+2) ; propagate to hundreds place
            rolc (bcd+3) ; propagate to thousands place
            rolc (bcd+4) ; propagate to ten thousands place

            pop a ; pop loop counter
            sub # 0x01, a ; decrement counter
            push a ; push loop counter

            jnz ..double_dabble_loop ; continue to iterate until all bits have passed through
        
        pop ; balance stack (pop loop counter back)


        mov (bcd+4), a ; ten thousands place
        add # "0", a ; add ASCII offset for "0"
        out a ; output character

        mov (bcd+3), a ; thousands place
        add # "0", a ; add ASCII offset for "0"
        out a ; output character

        mov (bcd+2), a ; hundreds place
        add # "0", a ; add ASCII offset for "0"
        out a ; output character

        mov (bcd+1), a ; tens place
        add # "0", a ; add ASCII offset for "0"
        out a ; output character

        mov bcd, a ; ones place
        add # "0", a ; add ASCII offset for "0"
        out a ; output character


        out # "\n" ; change line
        
        
        
        jmp .loop ; calculate next term

    .halt:
        hlt


#align 0x100*8;bits
add_table: ; used to add 0x7B to each BCD digit (if >= 5) to force rollover (table padded from 0xA to 0xF, these are not BCD digits)

    #d 0x00
    #d 0x01
    #d 0x02
    #d 0x03
    #d 0x04

    #d 0x80
    #d 0x81
    #d 0x82
    #d 0x83
    #d 0x84
    
    #d 0x00
    #d 0x00
    #d 0x00
    #d 0x00
    #d 0x00
    #d 0x00

string: ; can fit within the already-started page, but (16,x) indexing doesn't allow crossing the page boundary
    #d "Due to technical reasons, only the Fibonacci numbers < 65535 are output. In reality, they continue ad infinitum.\n\n00000\n00001\n\0" ; also output 2 first terms, as the double dabble method only outputs terms 2+.
string_end: ; to see end address of string