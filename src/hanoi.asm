#include "instructions.asm"

#include "ansi_escape.asm"



DISC_COUNT = 0x0C ; number of discs on the towers (max 41, 0x29, due to stack limits)

MARGIN_WIDTH = 0x01 ; padding on each side of a rod

ROD_CHAR = "|"
BLANK_CHAR = " "
FILL_CHAR = "#"
BOTTOM_LINE_CHAR = "X"

FROM_ROD_NAME = "A"
TO_ROD_NAME = "C"
AUX_ROD_NAME = "B"

#bank ram
    
    ; Count the number of fill tiles and blank tiles in current disc rendering.

    blank_tiles:
        #res 1
    fill_tiles:
        #res 1
    

    ; Pointers to top of (upward-growing, empty) stacks of discs on rods
    ; Make zp addr of pointer to virtual stack the same as page # of stack
    
    #addr 0x02 ; same as page # of vis_from_stack
    from_sp:
        #res 1

    #addr 0x03 ; same as page # of vis_to_stack
    to_sp:
        #res 1

    #addr 0x04 ; same as page # of vis_aux_stack
    aux_sp:
        #res 1


    ; Used as a scratchpad for copying values for function recursion (CAUTION, THIS IS NOT REENTRANT.) Do not expect this being preserved during a call.

    from:
        #res 1
    to:
        #res 1
    aux:
        #res 1
    


    ; Skip stack page

    #addr 0x0200
    vis_from_stack: ; software stack for visualization of 'from' rod
        #res 0x100

    #addr 0x0300
    vis_to_stack: ; software stack for visualization of 'to' rod
        #res 0x100

    #addr 0x0400
    vis_aux_stack: ; software stack for visualization of 'aux' rod
        #res 0x100
    
#bank rom

start:
    mov # 0xFF, sp
    outmode text


    .init_stacks:
        mov # 0x00, a
        mov a, to_sp
        mov a, aux_sp
        ; from_sp is intitialized later to the correct starting value

        ; A is already set to 0
        mov # 0x00, x
        ..reset_stacks:
            ; Zero out the corresponding cell of each stack
            mov a, (vis_from_stack, x)
            mov a, (vis_to_stack, x)
            mov a, (vis_aux_stack, x)

            swap a, x ; loop counter into A, #0x00 into X
            add # 0x01, a
            swap a, x ; back in place again

            jnc ..reset_stacks


        mov # 0x00, x ; x is a pointer into vis_from_stack for this loop
        mov # DISC_COUNT, a ; a acts an index
        ..init_from_stack_loop: ; initialized in descending order, from vis_from_stack[0]==DISC_COUNT to vis_from_stack[DISC_COUNT-1]==1
            mov a, (vis_from_stack, x)
            
            inc x ; increment stack pointer

            sub # 0x01, a ; decrement value
            jnz ..init_from_stack_loop ; loop if current a > 0

        ; vis_from_stack is now preset
        mov x, from_sp ; set 'from' stack pointer to cell after last (== DISC_COUNT)
    
    
    ANSI_CURSOR_HIDE ; hide cursor during visualization
    ANSI_CLEAR_SCREEN ; clear screen before starting

    jsr visualize ; do a visualization before the first move of a disc
    
    mov # (3 * (MARGIN_WIDTH + DISC_COUNT + ;*rod*;1 + DISC_COUNT + MARGIN_WIDTH)), a ; print bottom line under discs
    .rod_bottom_loop: ; Make up the bottom of the rod. This will not be overwritten by cursor, as only the previous lines will be.
        out # BOTTOM_LINE_CHAR

        sub # 0x01, a

        jnz .rod_bottom_loop ; decrement if still nonzero

    out # "\n"
    
    .rod_names: ; output rod names on last line. These will not be overwritten
                ; by cursor, as only the previous lines will be.
        mov # (MARGIN_WIDTH + DISC_COUNT), a
        ..bottom_line_1_loop:
            out # BLANK_CHAR

            sub # 0x01, a

            jnz ..bottom_line_1_loop ; decrement if still nonzero
            

        out # FROM_ROD_NAME


        mov # (2 * (MARGIN_WIDTH + DISC_COUNT)), a
        ..bottom_line_2_loop:
            out # BLANK_CHAR

            sub # 0x01, a

            jnz ..bottom_line_2_loop ; decrement if still nonzero


        out # AUX_ROD_NAME


        mov # (2 * (MARGIN_WIDTH + DISC_COUNT)), a
        ..bottom_line_3_loop:
            out # BLANK_CHAR

            sub # 0x01, a

            jnz ..bottom_line_3_loop ; decrement if still nonzero


    out # TO_ROD_NAME

    push # DISC_COUNT
    ; Pass the pages of the visualization stack for eack rod
    push # (vis_from_stack >> 8) ; 'from' rod
    push # (vis_to_stack >> 8) ; 'to' rod
    push # (vis_aux_stack >> 8) ; 'aux' rod
    
    jsr hanoi_recursive ; jsr after having pushed params, play animation
    
    pop
    pop
    pop ; discard 'aux', 'to', 'from' from stack
    
    out # "\n" ; another newline to prevent the rod names from
               ; being overwritten by system.

    ANSI_CURSOR_SHOW ; show cursor before halting

    .halt:
        hlt


visualize: ; print out current state of all 3 stacks. Destroys A, B, X. NO ANSI colors must be activated upon entering the function.
    
    ANSI_CURSOR_HOME ; move cursor to home (overwrite the screen)
    
    out # "\n" ; add empty line
    
    mov # (MARGIN_WIDTH + DISC_COUNT), a
    .top_line_1_loop:
        out # BLANK_CHAR

        sub # 0x01, a

        jnz .top_line_1_loop ; decrement if still nonzero
        

    out # ROD_CHAR ; output (empty) first rod on top line


    mov # (2 * (MARGIN_WIDTH + DISC_COUNT)), a
    .top_line_2_loop:
        out # BLANK_CHAR

        sub # 0x01, a

        jnz .top_line_2_loop ; decrement if still nonzero


    out # ROD_CHAR ; output (empty) second rod on top line


    mov # (2 * (MARGIN_WIDTH + DISC_COUNT)), a
    .top_line_3_loop:
        out # BLANK_CHAR

        sub # 0x01, a

        jnz .top_line_3_loop ; decrement if still nonzero


    out # ROD_CHAR ; output (empty) third rod on top line

    out # "\n"
    


    ANSI_RED ; ANSI escape sequence for red (preset before loop, as is normally set at end of the line)

    mov # (DISC_COUNT - 1), x ; iterate through stacks downward. No need to start 'higher' than index DISC_COUNT-1, as no disc could be higher than that on the rod considering the number of discs.
    .row_loop:

        mov (vis_from_stack, x), a ; get current disc width on 'from' stack (goes from 1 to DISC_COUNT)
        mov a, fill_tiles ; save it as number of tiles to fill
        
        mov # (DISC_COUNT + MARGIN_WIDTH), a ; add blank tiles past the disc width
        sub fill_tiles, a
        mov a, blank_tiles ; compute # of blank tiles (leave margin of 1 in case of width==DISC_COUNT)

        ; A is already set to blank_tiles
        sub # 0x01, a ; decrement
        jnc ..end_from_blank_1_loop ; skip if was 0 (=> underflowed)
        ..from_blank_1_loop: ; A is preset to (# of blank tiles to display - 1)
            out # BLANK_CHAR
            
            sub # 0x01, a
            
            jc ..from_blank_1_loop ; loop if no underflow (if was 0) => allows for correct number of iterations
        ..end_from_blank_1_loop:
        
        mov fill_tiles, a
        sub # 0x01, a ; decrement
        jnc ..end_from_fill_1_loop ; skip if was 0 (=> underflowed)
        ..from_fill_1_loop: ; A is preset to (# of fill tiles to display - 1)
            out # FILL_CHAR
            
            sub # 0x01, a
            
            jc ..from_fill_1_loop ; loop if no underflow (if was 0) => allows for correct number of iterations
        ..end_from_fill_1_loop:


        ANSI_RESET_COLOR ; set color to normal again

        out # ROD_CHAR ; depict rod

        ANSI_RED ; ANSI escape sequence for red


        mov fill_tiles, a
        sub # 0x01, a ; decrement
        jnc ..end_from_fill_2_loop ; skip if was 0 (=> underflowed)
        ..from_fill_2_loop: ; A is preset to (# of fill tiles to display - 1)
            out # FILL_CHAR
            
            sub # 0x01, a
            
            jc ..from_fill_2_loop ; loop if no underflow (if was 0) => allows for correct number of iterations
        ..end_from_fill_2_loop:
        
        mov blank_tiles, a
        sub # 0x01, a ; decrement
        jnc ..end_from_blank_2_loop ; skip if was 0 (=> underflowed)
        ..from_blank_2_loop: ; A is preset to (# of blank tiles to display - 1)
            out # BLANK_CHAR
            
            sub # 0x01, a
            
            jc ..from_blank_2_loop ; loop if no underflow (if was 0) => allows for correct number of iterations
        ..end_from_blank_2_loop:
        



        mov (vis_aux_stack, x), a ; get current disc width on 'aux' stack (goes from 1 to DISC_COUNT)
        mov a, fill_tiles ; save it as number of tiles to fill
        
        mov # (DISC_COUNT + MARGIN_WIDTH), a ; add blank tiles past the disc width
        sub fill_tiles, a
        mov a, blank_tiles ; compute # of blank tiles (leave margin of 1 in case of width==DISC_COUNT)

        ; A is already set to blank_tiles
        sub # 0x01, a ; decrement
        jnc ..end_aux_blank_1_loop ; skip if was 0 (=> underflowed)
        ..aux_blank_1_loop: ; A is preset to (# of blank tiles to display - 1)
            out # BLANK_CHAR
            
            sub # 0x01, a
            
            jc ..aux_blank_1_loop ; loop if no underflow (if was 0) => allows for correct number of iterations
        ..end_aux_blank_1_loop:
        
        mov fill_tiles, a
        sub # 0x01, a ; decrement
        jnc ..end_aux_fill_1_loop ; skip if was 0 (=> underflowed)
        ..aux_fill_1_loop: ; A is preset to (# of fill tiles to display - 1)
            out # FILL_CHAR
            
            sub # 0x01, a
            
            jc ..aux_fill_1_loop ; loop if no underflow (if was 0) => allows for correct number of iterations
        ..end_aux_fill_1_loop:


        ANSI_RESET_COLOR ; set color to normal again

        out # ROD_CHAR ; depict rod

        ANSI_RED ; ANSI escape sequence for red


        mov fill_tiles, a
        sub # 0x01, a ; decrement
        jnc ..end_aux_fill_2_loop ; skip if was 0 (=> underflowed)
        ..aux_fill_2_loop: ; A is preset to (# of fill tiles to display - 1)
            out # FILL_CHAR
            
            sub # 0x01, a
            
            jc ..aux_fill_2_loop ; loop if no underflow (if was 0) => allows for correct number of iterations
        ..end_aux_fill_2_loop:
        
        mov blank_tiles, a
        sub # 0x01, a ; decrement
        jnc ..end_aux_blank_2_loop ; skip if was 0 (=> underflowed)
        ..aux_blank_2_loop: ; A is preset to (# of blank tiles to display - 1)
            out # BLANK_CHAR
            
            sub # 0x01, a
            
            jc ..aux_blank_2_loop ; loop if no underflow (if was 0) => allows for correct number of iterations
        ..end_aux_blank_2_loop:




        mov (vis_to_stack, x), a ; get current disc width on 'to' stack (goes from 1 to DISC_COUNT)
        mov a, fill_tiles ; save it as number of tiles to fill
        
        mov # (DISC_COUNT + MARGIN_WIDTH), a ; add blank tiles past the disc width
        sub fill_tiles, a
        mov a, blank_tiles ; compute # of blank tiles (leave margin of 1 in case of width==DISC_COUNT)

        ; A is already set to blank_tiles
        sub # 0x01, a ; decrement
        jnc ..end_to_blank_1_loop ; skip if was 0 (=> underflowed)
        ..to_blank_1_loop: ; A is preset to (# of blank tiles to display - 1)
            out # BLANK_CHAR
            
            sub # 0x01, a
            
            jc ..to_blank_1_loop ; loop if no underflow (if was 0) => allows for correct number of iterations
        ..end_to_blank_1_loop:
        
        mov fill_tiles, a
        sub # 0x01, a ; decrement
        jnc ..end_to_fill_1_loop ; skip if was 0 (=> underflowed)
        ..to_fill_1_loop: ; A is preset to (# of fill tiles to display - 1)
            out # FILL_CHAR
            
            sub # 0x01, a
            
            jc ..to_fill_1_loop ; loop if no underflow (if was 0) => allows for correct number of iterations
        ..end_to_fill_1_loop:

        
        ANSI_RESET_COLOR ; set color to normal again

        out # ROD_CHAR ; depict rod

        ANSI_RED ; ANSI escape sequence for red


        mov fill_tiles, a
        sub # 0x01, a ; decrement
        jnc ..end_to_fill_2_loop ; skip if was 0 (=> underflowed)
        ..to_fill_2_loop: ; A is preset to (# of fill tiles to display - 1)
            out # FILL_CHAR
            
            sub # 0x01, a
            
            jc ..to_fill_2_loop ; loop if no underflow (if was 0) => allows for correct number of iterations
        ..end_to_fill_2_loop:
        
        mov blank_tiles, a
        sub # 0x01, a ; decrement
        jnc ..end_to_blank_2_loop ; skip if was 0 (=> underflowed)
        ..to_blank_2_loop: ; A is preset to (# of blank tiles to display - 1)
            out # BLANK_CHAR
            
            sub # 0x01, a
            
            jc ..to_blank_2_loop ; loop if no underflow (if was 0) => allows for correct number of iterations
        ..end_to_blank_2_loop:



        out # "\n"

        mov x, a ; loop counter in A
        sub # 0x01, a
        mov a, x ; back again

        jc .row_loop ; loop if currently >= 0
    .end_row_loop:
    
    
    ANSI_RESET_COLOR ; set color to normal again

    rts ; done


hanoi_recursive: ; recursive subroutine used for solving. Stack parameters: ... [recursion level := number of discs] ['from' rod] ['to' rod] ['aux' rod] ([return address low] [return address high]) *sp*
    pop
    pop ; => ... level from to aux *ret_l* ret_h


    ; Copy current 'aux', 'to' and 'from' to scratchpad to push them all further down the stack.

    pop a ; => ... level from to *aux* ret_l ret_h
    mov a, aux

    pop a ; => ... level from *to* aux ret_l ret_h
    mov a, to

    pop a ; => ... level *from* to aux ret_l ret_h
    mov a, from



    pop a ; => *level* from to aux ret_l ret_h
    sub # 0x01, a
    jnc .return ; if 'level' is currently 0, return
        ; else, 'level' (in a) is decremented for the recursive calls
        
        ; IMPORTANT: despite being redundant, the code paths are split due to
        ; the following subtractions, which mess up the flags. Plus, we can't
        ; really put them on the stack (would be long and expensive in this case).
        
        mov a, x ; temporarily save next level in X

        mov sp, a
        sub # 0x06, a ; put the SP back in its original position (equivalent to push x6)
        mov a, sp ; => ... level from to aux ret_l ret_h *sp*

        push x ; push level for recursive call => ... level from to aux ret_l ret_h next_level *sp*

        mov from, a
        push a ; next level's 'from' is the current 'from' => ... level from to aux ret_l ret_h next_level next_from *sp*

        mov aux, a
        push a ; next level's 'to' is the current 'aux' => ... level from to aux ret_l ret_h next_level next_from next_to *sp*
        
        mov to, a
        push a ; next level's 'aux' is the current 'to' => ... level from to aux ret_l ret_h next_level next_from next_to next_aux *sp*
        
        jsr hanoi_recursive ; RECURSION MAGIC HAPPENS HERE

        ; Now, same stack context as before JSR => ... level from to aux ret_l ret_h <next_level> <next_from> <next_to> <next_aux> *sp*
        ; NOTE : <x> => don't care
        
        ; NOTE : the registers and scratchpad have been destroyed by the other calls at this point.
        
        mov sp, a
        add # 0x6, a ; equiv. to popping x6
        mov a, sp ; => ... level from to aux *ret_l* ret_h
        
        ; Now, replace current stack frame with another call (tail call optimization)
        
        pop x ; save current 'aux' in X (save for later) => ... level from to *aux* ret_l ret_h

        pop ; next 'to' is still the current 'to', no need to fiddle with it => ... level from *to* aux ret_l ret_h
        
        pop ; skip 'from' for now => ... level *from* to aux ret_l ret_h

        pop a
        sub # 0x01, a
        push a ; decrement 'level' for recursive call => ... next_level *from* to aux ret_l ret_h

        push ; => ... next_level from *to* aux ret_l ret_h

        pop a ; save current 'from' in A => ... next_level *from* to aux ret_l ret_h
        push x ; write current 'aux' to new 'from' => ... next_level next_from *to* aux ret_l ret_h


        push ; => ... next_level next_from to *aux* ret_l ret_h

        pop b ; save current 'to' in B while we have something in A => ... next_level next_from *to* aux ret_l ret_h
        push ; => ... next_level next_from to *aux* ret_l ret_h
        
        push a ; write current 'from' to new 'aux' => ... next_level next_from to next_aux *ret_l* ret_h
        
        mov b, to ; save current 'to' in memory


        .update_stacks:
            ; current 'from' is in A
            mov a, x ; move it to X to index
            mov (0x00, x), a ; index into ZP with current 'from' to get SP of current 'from' stack
            
            sub # 0x01, a ; decrement 'from' SP (empty stack => pre-decrement)
            mov a, (0x00, x) ; write it back at its location (by indexing into SP with 'from')
            
            ; (16,x) was used for getting SP at index 'from' in ZP. Now, use (x,b) to index into stack at page ['from'].
            ; X was LSB, is now MSB. No transfer required.

            mov a, b ; use the virtual SP to index into the pointed-to stack
            
            mov (x,b), a ; get disc # on 'from' stack
            mov a, from ; from is now used to store the disc #.
            
            mov # 0x00, a
            mov a, (x,b) ; As the visualization outputs the content of the stack, a non-zero tile at index >= SP is still displayed even if it's not 'in the stack'.
            ; Hence, zero out the initial location of the disc on 'from' stack to hide it upon display.


            mov to, x ; get current 'to' in X
            mov (0x00, x), a ; index into ZP with current 'to' to get SP of current 'to' stack
            mov a, aux ; temporarily set aux to a copy of 'to' SP.

            ; (16,x) was used for getting SP at index 'to' in ZP. Now, use (x,b) to index into stack at page ['to'].
            ; X was LSB, is now MSB. No transfer required.

            mov a, b ; use the virtual SP to index into the pointed-to stack

            mov from, a ; get disc # back

            mov a, (x,b) ; put disc on 'to' stack

            mov aux, a ; get 'to' SP back from temp location.
            add # 0x01, a ; increment 'to' SP (empty stack => post-increment)
            ; X is still set to 'to'.
            mov a, (0x00, x) ; write the incremented SP to *to in ZP.

        push
        push ; => ... next_level next_from to next_aux ret_l ret_h *sp*

        jsr visualize ; display (soft) stacks, (hard) SP is in correct location to not mess up the (real) stack
        
        
        ; => ... next_level next_from to next_aux ret_l ret_h *sp*
        ; Due to the call being a tail call, we only jump after having overwritten OUR OWN context. The called subroutine will return to OUR caller, not to us.
        jmp hanoi_recursive

    .return:
        mov sp, a
        sub # 0x06, a ; put the SP back in its original position (equivalent to push x6)
        mov a, sp ; => ... level from to aux ret_l ret_h *sp*

        rts ; SP points after return addr, which is what we want.
