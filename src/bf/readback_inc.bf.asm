#d8 (OP_INC_VAL | 0x5) ; 5x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_000`16)
brace_open_00_000:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_GET_VAL | 0x1) ; 1x ,
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_GET_VAL | 0x1) ; 1x ,
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_000`16)
brace_close_00_000:

#d8 OP_END ; END