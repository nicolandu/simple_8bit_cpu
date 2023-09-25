#include "instructions.asm"

; https://en.wikipedia.org/wiki/Double_dabble

#bank ram
    bcd:
        #res 5 ; 1 BCD digit per byte, ones place first (+0), ten thousands place last(+4)
    bin_val:
        #res 2 ; 16-bit

#bank rom

start:
    mov # 0xFF, sp
    outmode text ; output as ASCII characters

    mov # 0x00, a
    mov # 0x00, x

    .loop:
        mov a, bin_val ; set low byte for double dabble
        mov x, (bin_val+1) ; set high byte

        push a ; push low byte of counter (destroyed by double_dabble)
        push x ; push high byte of counter (destroyed by double_dabble)

        jsr double_dabble


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


        pop x ; pop high byte of counter (was destroyed by double_dabble)
        pop a ; pop low byte of counter (was destroyed by double_dabble)

        add # 0x01, a ; increment low byte

        swap a, x ; swap high and low bytes
        addc # 0x00, a ; ripple carry into high byte
        swap a, x ; restore high and low bytes' position

        jnc .loop ; loop if high byte didn't overflow (if counter < 65536)


    .halt:
        hlt

double_dabble: ; converts (bin_val, 2 bytes) into BCD (bcd, 5 bytes, 1 digit per place, ones place first (+0), ten thousands place last (+4)) (destroys A, B, X, bin_val)

    push # 0x10 ; 16 bits, 1 iteration per bit (loop counter on stack)

    mov # 0x00, a

    mov a, bcd ; initialize BCD digits to 0
    mov a, (bcd+1)
    mov a, (bcd+2)
    mov a, (bcd+3)
    mov a, (bcd+4)

    .loop:

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



        ..shift_value:
        rolc bin_val ; shift bin_val (bit shifted in doesn't matter) long large
        rolc (bin_val+1) ; propagate shift to high byte of bin_val

        rolc bcd ; propagate to ones place
        rolc (bcd+1) ; propagate to tens place
        rolc (bcd+2) ; propagate to hundreds place
        rolc (bcd+3) ; propagate to thousands place
        rolc (bcd+4) ; propagate to ten thousands place

        pop a ; pop loop counter
        sub # 0x01, a ; decrement counter
        push a ; push loop counter

        jnz .loop ; continue to iterate until all bits have passed through
    
    pop ; balance stack (pop loop counter)
    rts ; done, output is in BCD
    

#align 0x100*8;bits
add_table: ; used to add 0x7B to each BCD digit >= 5 to force rollover (table padded from 0xA to 0xF, these are not BCD digits)
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
