#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x3) ; 3x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_000`16)
brace_open_00_000:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_000`16)
brace_close_00_000:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_001`16)
brace_open_00_001:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_001`16)
brace_close_00_001:

#d8 (OP_INC_VAL | 0x8) ; 8x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_002`16)
brace_open_00_002:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x9) ; 9x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_002`16)
brace_close_00_002:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0x4) ; 4x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_003`16)
brace_open_00_003:

#d8 (OP_DEC_VAL | 0x2) ; 2x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x3) ; 3x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_003`16)
brace_close_00_003:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_VAL | 0x7) ; 7x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_VAL | 0x3) ; 3x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_004`16)
brace_open_00_004:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_004`16)
brace_close_00_004:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_005`16)
brace_open_00_005:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_000`16)
brace_open_01_000:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_000`16)
brace_close_01_000:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_001`16)
brace_open_01_001:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_001`16)
brace_close_01_001:

#d8 (OP_INC_VAL | 0x9) ; 9x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_002`16)
brace_open_01_002:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x5) ; 5x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_002`16)
brace_close_01_002:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_PUT_VAL | 0x3) ; 3x .
#d8 (OP_DEC_VAL | 0xE) ; 14x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0xA) ; 10x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_003`16)
brace_open_01_003:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x5) ; 5x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_003`16)
brace_close_01_003:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_VAL | 0x3) ; 3x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0x7) ; 7x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x9) ; 9x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_004`16)
brace_open_01_004:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x5) ; 5x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_004`16)
brace_close_01_004:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x8) ; 8x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_005`16)
brace_open_01_005:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x7) ; 7x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_005`16)
brace_close_01_005:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0xB) ; 11x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0x2) ; 2x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0xB) ; 11x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_VAL | 0x7) ; 7x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0x4) ; 4x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_VAL | 0xE) ; 14x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0xA) ; 10x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_006`16)
brace_open_01_006:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x5) ; 5x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_006`16)
brace_close_01_006:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_PUT_VAL | 0x2) ; 2x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_007`16)
brace_open_01_007:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_007`16)
brace_close_01_007:

#d8 (OP_INC_VAL | 0xA) ; 10x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_008`16)
brace_open_01_008:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_008`16)
brace_close_01_008:

#d8 (OP_INC_VAL | 0x7) ; 7x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_009`16)
brace_open_01_009:

#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_GET_VAL | 0x1) ; 1x ,

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_009`16)
brace_close_01_009:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_005`16)
brace_close_00_005:

#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_VAL | 0x8) ; 8x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_006`16)
brace_open_00_006:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x8) ; 8x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_006`16)
brace_close_00_006:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_007`16)
brace_open_00_007:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x4) ; 4x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_007`16)
brace_close_00_007:

#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_008`16)
brace_open_00_008:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_010`16)
brace_open_01_010:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x4) ; 4x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_010`16)
brace_close_01_010:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_011`16)
brace_open_01_011:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x8) ; 8x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_011`16)
brace_close_01_011:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_012`16)
brace_open_01_012:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x8) ; 8x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_012`16)
brace_close_01_012:

#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_013`16)
brace_open_01_013:

#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x1) ; 1x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_000`16)
brace_open_02_000:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_000`16)
brace_close_02_000:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_001`16)
brace_open_02_001:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_001`16)
brace_close_02_001:

#d8 (OP_INC_VAL | 0x6) ; 6x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_002`16)
brace_open_02_002:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x7) ; 7x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_002`16)
brace_close_02_002:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0xC) ; 12x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_003`16)
brace_open_02_003:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_003`16)
brace_close_02_003:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_004`16)
brace_open_02_004:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_000`16)
brace_open_03_000:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_000`16)
brace_close_03_000:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_004`16)
brace_close_02_004:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x8) ; 8x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_005`16)
brace_open_02_005:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_005`16)
brace_close_02_005:

#d8 (OP_INC_VAL | 0xA) ; 10x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_006`16)
brace_open_02_006:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0xB) ; 11x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_006`16)
brace_close_02_006:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0x8) ; 8x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_VAL | 0x3) ; 3x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0x6) ; 6x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0x8) ; 8x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_007`16)
brace_open_02_007:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_007`16)
brace_close_02_007:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_008`16)
brace_open_02_008:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_008`16)
brace_close_02_008:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_009`16)
brace_open_02_009:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_009`16)
brace_close_02_009:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_013`16)
brace_close_01_013:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_014`16)
brace_open_01_014:

#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_010`16)
brace_open_02_010:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_010`16)
brace_close_02_010:

#d8 (OP_INC_VAL | 0x5) ; 5x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_011`16)
brace_open_02_011:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x6) ; 6x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_011`16)
brace_close_02_011:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_PUT_VAL | 0x1) ; 1x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_012`16)
brace_open_02_012:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_012`16)
brace_close_02_012:

#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x4) ; 4x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_013`16)
brace_open_02_013:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_001`16)
brace_open_03_001:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x4) ; 4x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_001`16)
brace_close_03_001:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_002`16)
brace_open_03_002:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_002`16)
brace_close_03_002:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_013`16)
brace_close_02_013:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_014`16)
brace_open_02_014:

#d8 (OP_INC_PTR | 0x3) ; 3x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_003`16)
brace_open_03_003:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_003`16)
brace_close_03_003:

#d8 (OP_INC_VAL | 0xA) ; 10x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_004`16)
brace_open_03_004:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0xB) ; 11x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_004`16)
brace_close_03_004:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x9) ; 9x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0x8) ; 8x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_VAL | 0x3) ; 3x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0x6) ; 6x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0x8) ; 8x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_005`16)
brace_open_03_005:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_005`16)
brace_close_03_005:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_006`16)
brace_open_03_006:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_006`16)
brace_close_03_006:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_007`16)
brace_open_03_007:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_007`16)
brace_close_03_007:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_014`16)
brace_close_02_014:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_015`16)
brace_open_02_015:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_008`16)
brace_open_03_008:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_008`16)
brace_close_03_008:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_009`16)
brace_open_03_009:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_009`16)
brace_close_03_009:

#d8 (OP_INC_VAL | 0x9) ; 9x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_010`16)
brace_open_03_010:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0xA) ; 10x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_010`16)
brace_close_03_010:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x4) ; 4x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_011`16)
brace_open_03_011:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x5) ; 5x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_011`16)
brace_close_03_011:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0x2) ; 2x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0xB) ; 11x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_VAL | 0x7) ; 7x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0x4) ; 4x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_012`16)
brace_open_03_012:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_012`16)
brace_close_03_012:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_013`16)
brace_open_03_013:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_013`16)
brace_close_03_013:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_015`16)
brace_close_02_015:

#d8 (OP_DEC_PTR | 0x3) ; 3x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_016`16)
brace_open_02_016:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_016`16)
brace_close_02_016:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_014`16)
brace_close_01_014:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_015`16)
brace_open_01_015:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_015`16)
brace_close_01_015:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_008`16)
brace_close_00_008:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_009`16)
brace_open_00_009:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x5) ; 5x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_016`16)
brace_open_01_016:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x4) ; 4x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_016`16)
brace_close_01_016:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_017`16)
brace_open_01_017:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0xD) ; 13x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_017`16)
brace_close_01_017:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x4) ; 4x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_018`16)
brace_open_01_018:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_017`16)
brace_open_02_017:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_017`16)
brace_close_02_017:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_018`16)
brace_open_02_018:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_018`16)
brace_close_02_018:

#d8 (OP_INC_VAL | 0x5) ; 5x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_019`16)
brace_open_02_019:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x6) ; 6x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_019`16)
brace_close_02_019:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x5) ; 5x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_020`16)
brace_open_02_020:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x7) ; 7x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_020`16)
brace_close_02_020:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x6) ; 6x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_021`16)
brace_open_02_021:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x7) ; 7x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_021`16)
brace_close_02_021:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x5) ; 5x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x4) ; 4x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_022`16)
brace_open_02_022:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x4) ; 4x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_022`16)
brace_close_02_022:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_VAL | 0x8) ; 8x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0x6) ; 6x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_023`16)
brace_open_02_023:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_023`16)
brace_close_02_023:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_018`16)
brace_close_01_018:

#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_019`16)
brace_open_01_019:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_019`16)
brace_close_01_019:

#d8 (OP_INC_VAL | 0x5) ; 5x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_020`16)
brace_open_01_020:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x6) ; 6x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_020`16)
brace_close_01_020:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_PUT_VAL | 0x1) ; 1x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_021`16)
brace_open_01_021:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_021`16)
brace_close_01_021:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x2) ; 2x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_022`16)
brace_open_01_022:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_022`16)
brace_close_01_022:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_023`16)
brace_open_01_023:

#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_024`16)
brace_open_02_024:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_014`16)
brace_open_03_014:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x4) ; 4x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_014`16)
brace_close_03_014:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_015`16)
brace_open_03_015:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x4) ; 4x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_015`16)
brace_close_03_015:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_024`16)
brace_close_02_024:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_023`16)
brace_close_01_023:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_024`16)
brace_open_01_024:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x4) ; 4x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_025`16)
brace_open_02_025:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x3) ; 3x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x4) ; 4x +

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_025`16)
brace_close_02_025:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_026`16)
brace_open_02_026:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_026`16)
brace_close_02_026:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_PUT_VAL | 0x1) ; 1x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_027`16)
brace_open_02_027:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x6) ; 6x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_027`16)
brace_close_02_027:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_VAL | 0x3) ; 3x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_028`16)
brace_open_02_028:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x3) ; 3x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x2) ; 2x +

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_028`16)
brace_close_02_028:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x2) ; 2x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_029`16)
brace_open_02_029:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_029`16)
brace_close_02_029:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_030`16)
brace_open_02_030:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_030`16)
brace_close_02_030:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_024`16)
brace_close_01_024:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_025`16)
brace_open_01_025:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_025`16)
brace_close_01_025:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_026`16)
brace_open_01_026:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_026`16)
brace_close_01_026:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_027`16)
brace_open_01_027:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_027`16)
brace_close_01_027:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x2) ; 2x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_028`16)
brace_open_01_028:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x8) ; 8x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_028`16)
brace_close_01_028:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_029`16)
brace_open_01_029:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x8) ; 8x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_029`16)
brace_close_01_029:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_030`16)
brace_open_01_030:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x8) ; 8x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_030`16)
brace_close_01_030:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_031`16)
brace_open_01_031:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x8) ; 8x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_031`16)
brace_close_01_031:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_032`16)
brace_open_01_032:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x8) ; 8x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_032`16)
brace_close_01_032:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_033`16)
brace_open_01_033:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_031`16)
brace_open_02_031:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_031`16)
brace_close_02_031:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_032`16)
brace_open_02_032:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_032`16)
brace_close_02_032:

#d8 (OP_INC_VAL | 0x9) ; 9x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_033`16)
brace_open_02_033:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0xA) ; 10x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_033`16)
brace_close_02_033:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x4) ; 4x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_034`16)
brace_open_02_034:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x5) ; 5x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_034`16)
brace_close_02_034:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0x2) ; 2x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0xB) ; 11x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_VAL | 0x7) ; 7x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0x4) ; 4x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_035`16)
brace_open_02_035:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_035`16)
brace_close_02_035:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x5) ; 5x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_036`16)
brace_open_02_036:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x6) ; 6x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_036`16)
brace_close_02_036:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_037`16)
brace_open_02_037:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_037`16)
brace_close_02_037:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_033`16)
brace_close_01_033:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_034`16)
brace_open_01_034:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_034`16)
brace_close_01_034:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_035`16)
brace_open_01_035:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_038`16)
brace_open_02_038:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_038`16)
brace_close_02_038:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_035`16)
brace_close_01_035:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x5) ; 5x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_036`16)
brace_open_01_036:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_036`16)
brace_close_01_036:

#d8 (OP_INC_VAL | 0x9) ; 9x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_037`16)
brace_open_01_037:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x9) ; 9x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_037`16)
brace_close_01_037:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x4) ; 4x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_038`16)
brace_open_01_038:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x6) ; 6x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_038`16)
brace_close_01_038:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_VAL | 0x3) ; 3x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0x6) ; 6x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0x8) ; 8x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_039`16)
brace_open_01_039:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_039`16)
brace_close_01_039:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_040`16)
brace_open_01_040:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_040`16)
brace_close_01_040:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_009`16)
brace_close_00_009:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_010`16)
brace_open_00_010:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_041`16)
brace_open_01_041:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_041`16)
brace_close_01_041:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_010`16)
brace_close_00_010:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_011`16)
brace_open_00_011:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_042`16)
brace_open_01_042:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_039`16)
brace_open_02_039:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_016`16)
brace_open_03_016:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_000`16)
brace_open_04_000:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_05_000`16)
brace_open_05_000:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_06_000`16)
brace_open_06_000:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_07_000`16)
brace_open_07_000:

#d8 (OP_GET_VAL | 0x1) ; 1x ,

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_07_000`16)
brace_close_07_000:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_06_000`16)
brace_close_06_000:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_05_000`16)
brace_close_05_000:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_000`16)
brace_close_04_000:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_016`16)
brace_close_03_016:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_039`16)
brace_close_02_039:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_042`16)
brace_close_01_042:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_043`16)
brace_open_01_043:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_043`16)
brace_close_01_043:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_011`16)
brace_close_00_011:

#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0x8) ; 8x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_012`16)
brace_open_00_012:

#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_012`16)
brace_close_00_012:

#d8 (OP_INC_VAL | 0x3) ; 3x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_013`16)
brace_open_00_013:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x6) ; 6x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_013`16)
brace_close_00_013:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_014`16)
brace_open_00_014:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x7) ; 7x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_014`16)
brace_close_00_014:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_015`16)
brace_open_00_015:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_044`16)
brace_open_01_044:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_044`16)
brace_close_01_044:

#d8 (OP_INC_VAL | 0x1) ; 1x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_045`16)
brace_open_01_045:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_045`16)
brace_close_01_045:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_015`16)
brace_close_00_015:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_016`16)
brace_open_00_016:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_016`16)
brace_close_00_016:

#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0x8) ; 8x <
#d8 (OP_DEC_VAL | 0x2) ; 2x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_017`16)
brace_open_00_017:

#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0x8) ; 8x >
#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0x8) ; 8x <
#d8 (OP_INC_VAL | 0x1) ; 1x +

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_017`16)
brace_close_00_017:

#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x4) ; 4x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_018`16)
brace_open_00_018:

#d8 (OP_INC_VAL | 0x4) ; 4x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x4) ; 4x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_018`16)
brace_close_00_018:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_019`16)
brace_open_00_019:

#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_019`16)
brace_close_00_019:

#d8 (OP_INC_VAL | 0x1) ; 1x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_020`16)
brace_open_00_020:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_020`16)
brace_close_00_020:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_021`16)
brace_open_00_021:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0xF) ; 15x <
#d8 (OP_DEC_PTR | 0x9) ; 9x <
#d8 (OP_INC_VAL | 0x4) ; 4x +
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0xF) ; 15x >
#d8 (OP_INC_PTR | 0x9) ; 9x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_021`16)
brace_close_00_021:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_022`16)
brace_open_00_022:

#d8 (OP_PUT_VAL | 0x2) ; 2x .

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_022`16)
brace_close_00_022:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_023`16)
brace_open_00_023:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x6) ; 6x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_046`16)
brace_open_01_046:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x3) ; 3x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_046`16)
brace_close_01_046:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_047`16)
brace_open_01_047:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x9) ; 9x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_047`16)
brace_close_01_047:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_048`16)
brace_open_01_048:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_040`16)
brace_open_02_040:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_040`16)
brace_close_02_040:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_041`16)
brace_open_02_041:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_041`16)
brace_close_02_041:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_042`16)
brace_open_02_042:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_017`16)
brace_open_03_017:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_017`16)
brace_close_03_017:

#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_018`16)
brace_open_03_018:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_018`16)
brace_close_03_018:

#d8 (OP_INC_VAL | 0x1) ; 1x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_019`16)
brace_open_03_019:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_019`16)
brace_close_03_019:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_042`16)
brace_close_02_042:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_048`16)
brace_close_01_048:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_049`16)
brace_open_01_049:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_049`16)
brace_close_01_049:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_023`16)
brace_close_00_023:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_024`16)
brace_open_00_024:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_050`16)
brace_open_01_050:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_043`16)
brace_open_02_043:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_043`16)
brace_close_02_043:

#d8 (OP_INC_VAL | 0x3) ; 3x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_044`16)
brace_open_02_044:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_044`16)
brace_close_02_044:

#d8 (OP_INC_VAL | 0x6) ; 6x +
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_045`16)
brace_open_02_045:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x6) ; 6x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_045`16)
brace_close_02_045:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_046`16)
brace_open_02_046:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_046`16)
brace_close_02_046:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_047`16)
brace_open_02_047:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_047`16)
brace_close_02_047:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_050`16)
brace_close_01_050:

#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_024`16)
brace_close_00_024:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x8) ; 8x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_025`16)
brace_open_00_025:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_051`16)
brace_open_01_051:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_051`16)
brace_close_01_051:

#d8 (OP_INC_VAL | 0x1) ; 1x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_052`16)
brace_open_01_052:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_052`16)
brace_close_01_052:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_025`16)
brace_close_00_025:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_026`16)
brace_open_00_026:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_026`16)
brace_close_00_026:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_027`16)
brace_open_00_027:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_053`16)
brace_open_01_053:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_053`16)
brace_close_01_053:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_027`16)
brace_close_00_027:

#d8 (OP_INC_VAL | 0x1) ; 1x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_028`16)
brace_open_00_028:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_054`16)
brace_open_01_054:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_054`16)
brace_close_01_054:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_055`16)
brace_open_01_055:

#d8 (OP_GET_VAL | 0x1) ; 1x ,

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_055`16)
brace_close_01_055:

#d8 (OP_INC_VAL | 0x1) ; 1x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_056`16)
brace_open_01_056:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_056`16)
brace_close_01_056:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_057`16)
brace_open_01_057:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_057`16)
brace_close_01_057:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_028`16)
brace_close_00_028:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_029`16)
brace_open_00_029:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_029`16)
brace_close_00_029:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_030`16)
brace_open_00_030:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_030`16)
brace_close_00_030:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_031`16)
brace_open_00_031:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_031`16)
brace_close_00_031:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_032`16)
brace_open_00_032:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_032`16)
brace_close_00_032:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_033`16)
brace_open_00_033:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_033`16)
brace_close_00_033:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_034`16)
brace_open_00_034:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_034`16)
brace_close_00_034:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_035`16)
brace_open_00_035:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_035`16)
brace_close_00_035:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_036`16)
brace_open_00_036:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_036`16)
brace_close_00_036:

#d8 (OP_DEC_PTR | 0x7) ; 7x <
#d8 (OP_INC_VAL | 0x4) ; 4x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_037`16)
brace_open_00_037:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x4) ; 4x +
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x4) ; 4x +
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x4) ; 4x +
#d8 (OP_DEC_PTR | 0x6) ; 6x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_037`16)
brace_close_00_037:

#d8 (OP_INC_VAL | 0xE) ; 14x +
#d8 (OP_INC_PTR | 0x4) ; 4x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_DEC_PTR | 0x6) ; 6x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_038`16)
brace_open_00_038:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_058`16)
brace_open_01_058:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_048`16)
brace_open_02_048:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_020`16)
brace_open_03_020:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_001`16)
brace_open_04_001:

#d8 (OP_INC_PTR | 0x3) ; 3x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_001`16)
brace_close_04_001:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_002`16)
brace_open_04_002:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_002`16)
brace_close_04_002:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_003`16)
brace_open_04_003:

#d8 (OP_DEC_PTR | 0x3) ; 3x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_05_001`16)
brace_open_05_001:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_05_001`16)
brace_close_05_001:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_05_002`16)
brace_open_05_002:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_05_002`16)
brace_close_05_002:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_05_003`16)
brace_open_05_003:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_05_003`16)
brace_close_05_003:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_05_004`16)
brace_open_05_004:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_05_004`16)
brace_close_05_004:

#d8 (OP_INC_PTR | 0x3) ; 3x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_05_005`16)
brace_open_05_005:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_05_005`16)
brace_close_05_005:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_05_006`16)
brace_open_05_006:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_05_006`16)
brace_close_05_006:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_05_007`16)
brace_open_05_007:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_05_007`16)
brace_close_05_007:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_003`16)
brace_close_04_003:

#d8 (OP_DEC_PTR | 0x3) ; 3x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_020`16)
brace_close_03_020:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_021`16)
brace_open_03_021:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_021`16)
brace_close_03_021:

#d8 (OP_DEC_PTR | 0x3) ; 3x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_048`16)
brace_close_02_048:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_049`16)
brace_open_02_049:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_049`16)
brace_close_02_049:

#d8 (OP_DEC_PTR | 0x3) ; 3x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_058`16)
brace_close_01_058:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_059`16)
brace_open_01_059:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_059`16)
brace_close_01_059:

#d8 (OP_DEC_PTR | 0x3) ; 3x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_038`16)
brace_close_00_038:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_039`16)
brace_open_00_039:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_060`16)
brace_open_01_060:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_060`16)
brace_close_01_060:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_039`16)
brace_close_00_039:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_040`16)
brace_open_00_040:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x7) ; 7x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_061`16)
brace_open_01_061:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x8) ; 8x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x8) ; 8x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_061`16)
brace_close_01_061:

#d8 (OP_DEC_PTR | 0x7) ; 7x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_040`16)
brace_close_00_040:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_041`16)
brace_open_00_041:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_062`16)
brace_open_01_062:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_062`16)
brace_close_01_062:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_063`16)
brace_open_01_063:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_063`16)
brace_close_01_063:

#d8 (OP_INC_VAL | 0x5) ; 5x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_064`16)
brace_open_01_064:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x6) ; 6x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_064`16)
brace_close_01_064:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_065`16)
brace_open_01_065:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_065`16)
brace_close_01_065:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_066`16)
brace_open_01_066:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_050`16)
brace_open_02_050:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_050`16)
brace_close_02_050:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_051`16)
brace_open_02_051:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_022`16)
brace_open_03_022:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_004`16)
brace_open_04_004:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_05_008`16)
brace_open_05_008:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_06_001`16)
brace_open_06_001:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_07_001`16)
brace_open_07_001:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_08_000`16)
brace_open_08_000:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_09_000`16)
brace_open_09_000:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_10_000`16)
brace_open_10_000:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_11_000`16)
brace_open_11_000:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_12_000`16)
brace_open_12_000:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_12_000`16)
brace_close_12_000:

#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_12_001`16)
brace_open_12_001:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_12_001`16)
brace_close_12_001:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_11_000`16)
brace_close_11_000:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_10_000`16)
brace_close_10_000:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_09_000`16)
brace_close_09_000:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_08_000`16)
brace_close_08_000:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_07_001`16)
brace_close_07_001:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_06_001`16)
brace_close_06_001:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_05_008`16)
brace_close_05_008:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_004`16)
brace_close_04_004:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_022`16)
brace_close_03_022:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_051`16)
brace_close_02_051:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_052`16)
brace_open_02_052:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x6) ; 6x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_023`16)
brace_open_03_023:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x8) ; 8x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_023`16)
brace_close_03_023:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_024`16)
brace_open_03_024:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_024`16)
brace_close_03_024:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_052`16)
brace_close_02_052:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_066`16)
brace_close_01_066:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_041`16)
brace_close_00_041:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_042`16)
brace_open_00_042:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_067`16)
brace_open_01_067:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_067`16)
brace_close_01_067:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_068`16)
brace_open_01_068:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_068`16)
brace_close_01_068:

#d8 (OP_INC_VAL | 0x4) ; 4x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_069`16)
brace_open_01_069:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x8) ; 8x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_069`16)
brace_close_01_069:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_070`16)
brace_open_01_070:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x8) ; 8x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_070`16)
brace_close_01_070:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x3) ; 3x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_071`16)
brace_open_01_071:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x8) ; 8x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_071`16)
brace_close_01_071:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x7) ; 7x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_072`16)
brace_open_01_072:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x8) ; 8x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_072`16)
brace_close_01_072:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x7) ; 7x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_073`16)
brace_open_01_073:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_053`16)
brace_open_02_053:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_053`16)
brace_close_02_053:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_073`16)
brace_close_01_073:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_074`16)
brace_open_01_074:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_054`16)
brace_open_02_054:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_054`16)
brace_close_02_054:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_055`16)
brace_open_02_055:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_055`16)
brace_close_02_055:

#d8 (OP_INC_VAL | 0x4) ; 4x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_056`16)
brace_open_02_056:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x8) ; 8x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_056`16)
brace_close_02_056:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_INC_VAL | 0x6) ; 6x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_057`16)
brace_open_02_057:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_057`16)
brace_close_02_057:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_PUT_VAL | 0x1) ; 1x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_058`16)
brace_open_02_058:

#d8 (OP_DEC_VAL | 0x2) ; 2x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x3) ; 3x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_058`16)
brace_close_02_058:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x4) ; 4x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_059`16)
brace_open_02_059:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x4) ; 4x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_059`16)
brace_close_02_059:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_PUT_VAL | 0x1) ; 1x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_060`16)
brace_open_02_060:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_060`16)
brace_close_02_060:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_074`16)
brace_close_01_074:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_075`16)
brace_open_01_075:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_075`16)
brace_close_01_075:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_076`16)
brace_open_01_076:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_076`16)
brace_close_01_076:

#d8 (OP_INC_VAL | 0x8) ; 8x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_077`16)
brace_open_01_077:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x8) ; 8x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_077`16)
brace_close_01_077:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_078`16)
brace_open_01_078:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x4) ; 4x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_078`16)
brace_close_01_078:

#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_079`16)
brace_open_01_079:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_061`16)
brace_open_02_061:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_061`16)
brace_close_02_061:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_079`16)
brace_close_01_079:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_080`16)
brace_open_01_080:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_062`16)
brace_open_02_062:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_062`16)
brace_close_02_062:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_063`16)
brace_open_02_063:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_063`16)
brace_close_02_063:

#d8 (OP_INC_VAL | 0x4) ; 4x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_064`16)
brace_open_02_064:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x8) ; 8x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_064`16)
brace_close_02_064:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0x3) ; 3x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_065`16)
brace_open_02_065:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x3) ; 3x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_065`16)
brace_close_02_065:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0x3) ; 3x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_VAL | 0xE) ; 14x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_066`16)
brace_open_02_066:

#d8 (OP_DEC_VAL | 0x2) ; 2x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_066`16)
brace_close_02_066:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x2) ; 2x -
#d8 (OP_PUT_VAL | 0x1) ; 1x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_067`16)
brace_open_02_067:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_067`16)
brace_close_02_067:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_080`16)
brace_close_01_080:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_042`16)
brace_close_00_042:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x8) ; 8x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_043`16)
brace_open_00_043:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_081`16)
brace_open_01_081:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_081`16)
brace_close_01_081:

#d8 (OP_INC_VAL | 0x1) ; 1x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_082`16)
brace_open_01_082:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_082`16)
brace_close_01_082:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_043`16)
brace_close_00_043:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_044`16)
brace_open_00_044:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_044`16)
brace_close_00_044:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_045`16)
brace_open_00_045:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_083`16)
brace_open_01_083:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_083`16)
brace_close_01_083:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_045`16)
brace_close_00_045:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_046`16)
brace_open_00_046:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_046`16)
brace_close_00_046:

#d8 (OP_INC_VAL | 0xA) ; 10x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_047`16)
brace_open_00_047:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_047`16)
brace_close_00_047:

#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 OP_END ; END