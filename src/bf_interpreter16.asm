#include "instructions.asm"

;* 16-BIT BRAINF*CK INTERPRETER *;

;* *** BF OPERATORS ***
; [opcode : 4 bits][operand : 4 bits]
; e.g.: OP_INC_VAL 4 => ++++
*;
OP_END = 0x00 ; 0x0 => end of BF program
OP_INC_PTR = 0x10 ; 0x1 => ++ptr
OP_DEC_PTR = 0x20 ; 0x2 => --ptr
OP_INC_VAL = 0x30 ; 0x3 => ++(*ptr)
OP_DEC_VAL = 0x40 ; 0x4 => --(*ptr)
OP_PUT_VAL = 0x50 ; 0x5 => out = *ptr
OP_GET_VAL = 0x60 ; 0x6 => *ptr = in
OP_JMP_FWD = 0x70 ; 0x7 => [ operator in BF
OP_JMP_BCK = 0x80 ; 0x8 => ] operator in BF

#bank ram
    bf_pc: ; program counter for BF execution
        #res 2 ; 16-bit
    bf_ptr: ; data pointer for BF execution
        #res 2 ; 16-bit
    count: ; count for repetitions of operation
        #res 1 ; 8-bit, but from 0x00 to 0x0F only

    #addr 0x0200 ; align with page boundary to mark start of BF data segment (skip stack page [0x01xx])
    bf_data_seg:
        #res (0x8000-$) ; reserve rest of RAM for BF data segment (16-bit cells; low byte first)

    ; DO NOT PUT STUFF HERE, put it ***BEFORE*** the data segment -> data ("tape") segment occupies all the end of RAM

#bank rom

bf_interpreter:
        mov # 0xFF, sp
        outmode text ; output ASCII from Brainf*ck

        mov # (bf_code_seg & 0xFF), a
        mov a, bf_pc ; set BF program counter low byte to the correct initial value (low byte of address of start of code segment)

        mov # (bf_code_seg >> 8), a
        mov a, (bf_pc+1) ; set BF program counter high byte to the correct initial value (high byte of address of start of code segment)


        mov # (bf_data_seg & 0xFF), a
        mov a, bf_ptr ; set BF data pointer low byte to the correct initial value (low byte of address of start of data segment)

        mov # (bf_data_seg >> 8), a
        mov a, (bf_ptr+1) ; set BF data pointer high byte to the correct initial value (high byte of address start of data segment)

    interpreter_loop: ; interprets BF code at address [bf_pc]
        mov bf_pc, b ; (simulated) program counter into (b,x)
        mov (bf_pc+1), x

        mov (x,b), a ; load A indirect at [bf_pc] (get opcode)

        mov a, x ; save temp value of opcode in x
        and # 0x0F, a ; mask out high 4 bits of opcodes, keep count
        mov a, count ; save count for executing the operation
        
        mov x, a ; get original opcode back
        and # 0xF0, a ; mask out lower 4 bits of opcode, only 4MSB are used for branching

        mov a, x
        jmp (opcode_branch_table, x); index into branch table with (opcode * 4)


        ; halting already taken taken care of in branch table

        case_inc_ptr:
            rol count, 0 ; 16-bit cells mean we need to double the pointer increment/decrement

            mov bf_ptr, a
            add count, a ; increment pointer low byte [count] times
            mov a, bf_ptr

            mov (bf_ptr+1), a
            addc # 0x00, a ; ripple carry into pointer high byte
            mov a, (bf_ptr+1)

            jmp inc_pc ; get out of switch

        case_dec_ptr:
            rol count, 0 ; 16-bit cells mean we need to double the pointer increment/decrement

            mov bf_ptr, a
            sub count, a ; decrement pointer low byte
            mov a, bf_ptr

            mov (bf_ptr+1), a
            subc # 0x00, a ; ripple carry into pointer high byte
            mov a, (bf_ptr+1)

            jmp inc_pc ; get out of switch

        case_inc_val:
            mov bf_ptr, b
            mov (bf_ptr+1), x

            push b ; save low byte of address of low byte of value due to destructive nature of following operations

            mov (x,b), a ; load A indirect at [bf_ptr] (get current value low byte)
            add count, a ; increment current value by [count] (destroys B)
            
            pop b ; get low byte of address back (was overwritten)

            push flags ; save carry for next addition, as another flag-setting operation is in-between

            mov a, (x,b) ; store current value low byte



            add # 0x01, b ; high byte of address is still valid, increment B to point to high byte of value (2-byte BF values don't straddle a page boundary)

            pop flags ; restore carry from low byte of value for rippling it into high byte of value

            push b ; save low byte of address of high byte of value

            mov (x,b), a ; get high byte of value
            addc # 0x00, a ; ripple carry from low byte (destroys B)

            pop b ; get low byte of address back

            mov a, (x,b) ; store current value high byte            

            jmp inc_pc ; get out of switch

        case_dec_val:
            mov bf_ptr, b
            mov (bf_ptr+1), x

            push b ; save low byte of address of low byte of value due to destructive nature of following operations

            mov (x,b), a ; load A indirect at [bf_ptr] (get current value low byte)
            sub count, a ; decrement current value by [count] (destroys B)
            
            pop b ; get low byte of address back (was overwritten)
            
            push flags ; save carry for next subtraction, as another flag-setting operation is in-between

            mov a, (x,b) ; store current value low byte



            add # 0x01, b ; high byte of address is still valid, increment B to point to high byte of value (2-byte BF values don't straddle a page boundary)

            pop flags ; restore carry from low byte of value for rippling it into high byte of value

            push b ; save low byte of address of high byte of value

            mov (x,b), a ; get high byte of value
            subc # 0x00, a ; ripple carry from low byte (destroys B)

            pop b ; get low byte of address back

            mov a, (x,b) ; store current value high byte            

            jmp inc_pc ; get out of switch

        case_put_val:
            mov bf_ptr, b
            mov (bf_ptr+1), x

            mov (x,b), a ; load A indirect at [bf_ptr] (get current value)

            out a ; output value low byte (value's 8 lower bits of 16)

            jmp inc_pc ; get out of switch

        case_get_val:
            mov bf_ptr, b
            mov (bf_ptr+1), x

            mov ina, a ; input value from INA to store on the "tape"

            mov a, (x,b) ; store A indirect at [bf_ptr] (replace current value low byte)
            

    
            add # 0x01, b ; make (x,b) point to high byte of value (doesn't straddle a page boundary)
                    
            mov # 0x00, a
            mov a, (x,b) ; zero out value high byte (allows for zero-extended ASCII code)

            jmp inc_pc ; get out of switch

        case_jmp_fwd:
            mov bf_pc, a
            add # 0x01, a ; increment program counter low byte
            mov a, bf_pc

            mov (bf_pc+1), a
            addc # 0x00, a ; ripple carry into program counter high byte
            mov a, (bf_pc+1)


            mov bf_pc, b
            mov a, x ; a is already set to (bf_pc+1), no need to fetch high byte of address from memory

            mov (x,b), a ; load A indirect at [bf_pc] (get low byte of jump address)

            push a ; push low byte of jump address



            mov b, a ; equivalent to 'mov bf_pc, a', but B is already set to bf_pc (low byte of address)
            add # 0x01, a ; increment program counter low byte (DESTROYS B)
            mov a, bf_pc

            mov x, a ; equivalent to 'mov (bf_pc+1), a', but X is already set to (bf_pc+1) (high byte of address)
            addc # 0x00, a ; ripple carry into program counter high byte (DESTROYS B)
            mov a, (bf_pc+1)


            mov bf_pc, b
            ; X is already set to (bf_pc+1), i.e. high byte of pointer

            mov (x,b), a ; load A indirect at [bf_pc] (get high byte of jump address)

            push a ; push high byte of jump address



            mov bf_ptr, b ; pointer to BF current cell (low byte)
            push b ; save low byte of bf_ptr for later

            mov (bf_ptr+1), x ; pointer to BF current cell (high byte)

            mov (x,b), a ; load A indirect at [bf_ptr] (get current value low byte)


            or # 0x00, a ; test value of A
            
            pop b ; get bf_ptr (low byte of pointer to current cell) back (needs to be before jump to keep stack balanced)

            jnz pop_jmp_addr ; if low byte of value is nonzero, value cannot be zero: jump elsewhere to pop (unused) jump address from stack and jump to next instruction
                ; if low byte of value is zero, test high byte of value for zero

                ; bf_ptr already pop'ed into B
                add # 0x01, b ; make (x,b) point to high byte of value (which doesn't straddle a byte boundary)
                
                ; X already set to (bf_ptr+1)
                mov (x,b), a ; load A indirect at [(bf_ptr)+1] (get current value high byte)

                or # 0x00, a ; test value of A
                
                jnz pop_jmp_addr ; if high byte of value is nonzero, jump elsewhere to pop (unused) jump address from stack and jump to next instruction
                    ; if it is zero, jump to instruction after matching ]
                    
                    pop a ; get high byte of jump address back
                    mov a, (bf_pc+1) ; set program counter high byte to high byte of jump address

                    pop a ; get low byte of jump address back
                    mov a, bf_pc ; set program counter low byte to low byte of jump address

                    jmp interpreter_loop ; do not pre-increment program counter before next instruction

        case_jmp_bck:
            mov bf_pc, a
            add # 0x01, a ; increment program counter low byte
            mov a, bf_pc

            mov (bf_pc+1), a
            addc # 0x00, a ; ripple carry into program counter high byte
            mov a, (bf_pc+1)


            mov bf_pc, b
            mov a, x ; a is already set to (bf_pc+1), no need to fetch high byte of address from memory

            mov (x,b), a ; load A indirect at [bf_pc] (get low byte of jump address)

            push a ; push low byte of jump address



            mov b, a ; equivalent to 'mov bf_pc, a', but B is already set to bf_pc (low byte of address)
            add # 0x01, a ; increment program counter low byte (DESTROYS B)
            mov a, bf_pc

            mov x, a ; equivalent to 'mov (bf_pc+1), a', but X is already set to (bf_pc+1) (high byte of address)
            addc # 0x00, a ; ripple carry into program counter high byte (DESTROYS B)
            mov a, (bf_pc+1)


            mov bf_pc, b
            ; X is already set to (bf_pc+1), i.e. high byte of pointer

            mov (x,b), a ; load A indirect at [bf_pc] (get high byte of jump address)

            push a ; push high byte of jump address



            mov bf_ptr, b ; pointer to BF current cell (low byte)
            push b ; save low byte of bf_ptr for later

            mov (bf_ptr+1), x ; pointer to BF current cell (high byte)

            mov (x,b), a ; load A indirect at [bf_ptr] (get current value low byte)


            or # 0x00, a ; test value of A
            
            pop b ; get bf_ptr (low byte of pointer to current cell) back (needs to be before jump to keep stack balanced)

            jnz .jump_back ; if low byte of value is nonzero, value is nonzero: jump back to instruction after matching [
                ; if low byte of value is zero, test high byte of value for zero

                ; bf_ptr already pop'ed into B
                add # 0x01, b ; make (x,b) point to high byte of value (which doesn't straddle a byte boundary)
                
                ; X already set to (bf_ptr+1)
                mov (x,b), a ; load A indirect at [(bf_ptr)+1] (get current value high byte)

                or # 0x00, a ; test value of A
                
                jz pop_jmp_addr ; if high byte of value is zero, pop (unused) return address off the stack and skip to next instruction
                
                .jump_back:
                    ; if either byte of value is nonzero (value is nonzero), jump back to instruction after matching [
                    
                    pop a ; get high byte of jump address back
                    mov a, (bf_pc+1) ; set program counter high byte to high byte of jump address

                    pop a ; get low byte of jump address back
                    mov a, bf_pc ; set program counter low byte to low byte of jump address

                    jmp interpreter_loop ; do not pre-increment program counter before next instruction
    
    ; this branch is used to clean up the jump address on the stack for BF (simulated) branches not taken. Then, the BF PC is incremented.
    pop_jmp_addr:
        pop ; pop (unused) BF jump address from stack
        pop

    ; this branch is executed for every BF opcode, except OP_END and jumps (which already set PC to next opcode)
    inc_pc:
        mov bf_pc, a
        add # 0x01, a ; increment program counter low byte
        mov a, bf_pc

        mov (bf_pc+1), a
        addc # 0x00, a ; ripple carry into program counter high byte
        mov a, (bf_pc+1)

        jmp interpreter_loop ; decode next instruction


#align 0x100*8;(bits) align to page boundary to allow (16, x) addressing into jump table
opcode_branch_table:
    #addr (opcode_branch_table+OP_END)
        hlt ; halt on BF END "opcode" (hlt, 1 byte, fits within the 4 bytes available)

    #addr (opcode_branch_table+OP_INC_PTR)
        jmp case_inc_ptr

    #addr (opcode_branch_table+OP_DEC_PTR)
        jmp case_dec_ptr

    #addr (opcode_branch_table+OP_INC_VAL)
        jmp case_inc_val

    #addr (opcode_branch_table+OP_DEC_VAL)
        jmp case_dec_val

    #addr (opcode_branch_table+OP_PUT_VAL)
        jmp case_put_val

    #addr (opcode_branch_table+OP_GET_VAL)
        jmp case_get_val

    #addr (opcode_branch_table+OP_JMP_FWD)
        jmp case_jmp_fwd
    
    #addr (opcode_branch_table+OP_JMP_BCK)
        jmp case_jmp_bck

bf_code_seg: ; BF code segment
    #include "bf/bitwidth.bf.asm"
