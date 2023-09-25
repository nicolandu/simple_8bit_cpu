#d8 (OP_INC_VAL | 0xD) ; 13x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_000`16)
brace_open_00_000:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x5) ; 5x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x7) ; 7x +
#d8 (OP_DEC_PTR | 0x3) ; 3x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_000`16)
brace_close_00_000:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_001`16)
brace_open_00_001:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_000`16)
brace_open_01_000:

#d8 (OP_INC_PTR | 0x5) ; 5x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x5) ; 5x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_000`16)
brace_close_01_000:

#d8 (OP_INC_PTR | 0x5) ; 5x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_001`16)
brace_open_01_001:

#d8 (OP_DEC_PTR | 0x5) ; 5x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x3) ; 3x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_001`16)
brace_close_01_001:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_002`16)
brace_open_01_002:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_002`16)
brace_close_01_002:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_003`16)
brace_open_01_003:

#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_003`16)
brace_close_01_003:

#d8 (OP_DEC_PTR | 0x5) ; 5x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_004`16)
brace_open_01_004:

#d8 (OP_INC_PTR | 0x5) ; 5x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x5) ; 5x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_004`16)
brace_close_01_004:

#d8 (OP_INC_PTR | 0x5) ; 5x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_005`16)
brace_open_01_005:

#d8 (OP_DEC_PTR | 0x5) ; 5x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x4) ; 4x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_005`16)
brace_close_01_005:

#d8 (OP_DEC_PTR | 0x3) ; 3x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_006`16)
brace_open_01_006:

#d8 (OP_INC_PTR | 0x4) ; 4x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x4) ; 4x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_006`16)
brace_close_01_006:

#d8 (OP_INC_PTR | 0x4) ; 4x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_007`16)
brace_open_01_007:

#d8 (OP_DEC_PTR | 0x4) ; 4x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x3) ; 3x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_007`16)
brace_close_01_007:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_008`16)
brace_open_01_008:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_008`16)
brace_close_01_008:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_009`16)
brace_open_01_009:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_009`16)
brace_close_01_009:

#d8 (OP_INC_VAL | 0xA) ; 10x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_010`16)
brace_open_01_010:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_010`16)
brace_close_01_010:

#d8 (OP_DEC_PTR | 0x5) ; 5x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_001`16)
brace_close_00_001:

#d8 OP_END ; END