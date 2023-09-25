#include "instructions.asm"

CELL_ARRAY_SIZE = 0x100; MAXIMUM VALUE: (0x8000-0x0200) ; (NEEDS TO BE MULTIPLE OF 0x100)

MAX_GENERATIONS = ((CELL_ARRAY_SIZE)/2)-2; (simulation occupies 2 cells per generation, plus margin for 2 initial cells (unused, but need to be present for init))

#bank ram
    gen_countdown:
        #res 2 ; countdown for generations (2-byte), stop after MAX_GENERATIONS

    temp_sp:
        #res 1 ; to store SP when reading cell-1 and cell-2 allows to "jump" to the previous SP value without repetitive push

    #addr 0x0200 ; after stack page (0x0100-0x01FF)
    cell_array: ; USES 0x00 for empty cells, 0x01 for non-empty cells
        #res CELL_ARRAY_SIZE
    cell_array_end:
    


#bank rom

start:

    .reset:
        mov # 0xFF, sp
        outmode text

        mov # (MAX_GENERATIONS)`8, a
        mov a, gen_countdown

        mov # (MAX_GENERATIONS >> 8), a
        mov a, (gen_countdown + 1)


        ; *** COMMENT FOR TEST PURPOSES ONLY, MUST BE UNCOMMENTED ON A REAL COMPUTER OR IF RAM IS NOT RESET TO ALL ZEROES ON STARTUP ***
    .reset_array:

        mov # (cell_array + 1)`8, b ; initialize B to low byte of (start of cell_array + 1) => first cell already initialized to 1
        mov # ((cell_array + 1) >> 8), x ; initialize X to high byte of (start of cell_array + 1)

        ..write_outer_loop:
            mov # 0x00, a

            ...write_inner_loop:
                mov a, (x, b) ; write A (0x00) into memory to reset the array
                
                sec ; increment lower byte (clever trick : addc 0x00 keeps A at zero, but increments using the carry in)
                addc # 0x00, b ; => thus, no need to re-set A to 0x00 for writing

                jnc ...write_inner_loop ; if carry, break

            swap b, x ; swap high and low bytes in registers (for comparison, as B needs to be overwritten if not an operand)

            addc # 0x00, b ; increment high byte (carry is set from previous calculation => saves time to (addc # 0x00) instread of (add # 0x01) )

            mov # 0x7F, a
            cmp b, a ; compare high byte (B) to 0x7F (A) (=> 0x7F is the max value of high byte of RAM addresses)

            swap b, x ; re-swap high and low bytes for addressing

            jc ..write_outer_loop ; continue to write if high byte (B) <= 0x7F (A) => stop at 0x7FFF (last RAM address)

    .initialize_array: ; set last cell to 1 (starting condition of automaton)
        mov # 0x01, a
        mov a, (cell_array_end - 1)
    
    .next_gen:
        ;* the stack is used as a circular buffer to push
        ; (..., addr-2_hi, addr-2_lo, addr-1_hi, addr-1_lo, *sp*, ...)

        ; instead of constantly subtracting and adding to (x, b) for indexing.
        ; *** (WARNING: CONSTANT STACK OVERFLOW) ***

        ; SEE INSPIRATION FOR EXPLANATIONS ON WORKINGS OF ALGORITHM *;

        ; The addresses of the initial 2 cells are pushed on the stack.

        push # (cell_array >> 8) ; push initial addr-2_hi
        push # cell_array`8 ; push initial addr-2_lo

        push # ((cell_array + 1) >> 8) ; push initial addr-1_hi
        push # (cell_array + 1)`8 ; push initial addr-1_lo

        ..loop: ; at start of loop, stack is ... addr-2_hi addr-2_lo addr-1_hi addr-1_lo *sp*
            pop b ; pop addr-1_lo  =>  ... addr-2_hi addr-2_lo addr-1_hi *addr-1_lo*

            add # 0x01, b ; add 1 to addr-1_lo for addr_lo
            mov b, x ; addr_lo into X (leave room in B for calculating addr_hi)

            pop b ; pop addr-1_hi  =>  ... addr-2_hi addr-2_lo *addr-1_hi* addr-1_lo

            addc # 0x00, b ; ripple carry from low byte of addr into high byte of addr (now addr_lo in X, addr_hi in B)

            mov # (cell_array_end >> 8), a
            cmp b, a ; test if high byte of addr (after increment) == high byte of first address after array

            jz ..end_generation ; end generation when end of array is reached

            push
            push ; ... addr-2_hi addr-2_lo addr-1_hi addr-1_lo *sp*

            push b ; push addr_hi  =>  ... addr-2_hi addr-2_lo addr-1_hi addr-1_lo addr_hi *sp*
            push x ; push addr_lo  =>  ... addr-2_hi addr-2_lo addr-1_hi addr-1_lo addr_hi addr_lo *sp*

            swap b, x ; invert B (currently addr_hi) and X (currently addr_lo) for (x,b) addressing

            mov (x,b), a ; load A with current cell

            or # 0x00, a ; test value of A for zero

            jz ...if_zero ; do not change neighbours' values if current cell is 0

                ; if cell is 1, set cell-1 to 1, and invert cell-2
                mov sp, a
                mov a, temp_sp ; store SP for later (currently points correctly for next iteration)

                pop
                pop ; ... addr-2_hi addr-2_lo addr-1_hi addr-1_lo *addr_hi* addr_lo



                pop b ; pop addr-1_lo  =>  ... addr-2_hi addr-2_lo addr-1_hi *addr-1_lo* addr_hi addr_lo
                pop x ; pop addr-1_hi  =>  ... addr-2_hi addr-2_lo *addr-1_hi* addr-1_lo addr_hi addr_lo

                mov # 0x01, a
                mov a, (x, b) ; set cell-1 to 1



                pop b ; pop addr-2_lo  =>  ... addr-2_hi *addr-2_lo* addr-1_hi addr-1_lo addr_hi addr_lo
                pop x ; pop addr-2_hi  =>  ... *addr-2_hi* addr-2_lo addr-1_hi addr-1_lo addr_hi addr_lo

                push b ; push addr-2_lo at current SP (saves instructions, plus addr2 is not useful anymore)  =>  ... addr-2_lo *addr-2_lo* addr-1_hi addr-1_lo addr_hi addr_lo

                sub (x, b), a ; subtract cell-2 from A (which is still 1) (effectively inverts cell-2) ***DESTROYS B***

                pop b ; pop the copy of addr-2_lo (get B back, was destroyed);  =>  ... *addr-2_lo* addr-2_lo addr-1_hi addr-1_lo addr_hi addr_lo

                mov a, (x, b) ; save result in cell-2


                mov temp_sp, a
                mov a, sp ; restore SP (now points correctly for next iteration again)

                out # "X" ; output "X" if current cell == 1

                jmp ..loop

            ...if_zero:
                out # "." ; output "." if current cell == 1

                jmp ..loop
        
        ..end_generation:
        ; here, the generation ended

        out # "\n"

        mov gen_countdown, a
        sub # 0x01, a ; decrement generation countdown
        mov a, gen_countdown

        jc .next_gen ; if no borrow (if carry set), continue simulation

        mov (gen_countdown + 1), a
        subc # 0x00, a ; ripple borrow (ripple absence of carry), decrement high byte countdown
        mov a, (gen_countdown + 1)

        jc .next_gen ; if no borrow (if carry set), continue simulation
    
    .halt: ; if coundown reaches zero, halt
        hlt
