#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0xF) ; 15x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_000`16)
brace_open_00_000:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x8) ; 8x >
#d8 (OP_INC_VAL | 0xA) ; 10x +
#d8 (OP_DEC_PTR | 0x7) ; 7x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_000`16)
brace_close_00_000:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x5) ; 5x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_001`16)
brace_open_00_001:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x9) ; 9x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_001`16)
brace_close_00_001:

#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x6) ; 6x >
#d8 (OP_INC_VAL | 0x1) ; 1x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_002`16)
brace_open_00_002:

#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_INC_VAL | 0x3) ; 3x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_000`16)
brace_open_01_000:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_000`16)
brace_open_02_000:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_000`16)
brace_close_02_000:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_001`16)
brace_open_02_001:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_001`16)
brace_close_02_001:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_000`16)
brace_close_01_000:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_001`16)
brace_open_01_001:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_001`16)
brace_close_01_001:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_002`16)
brace_open_01_002:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_002`16)
brace_close_01_002:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_002`16)
brace_close_00_002:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_003`16)
brace_open_00_003:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_003`16)
brace_open_01_003:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x4) ; 4x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x4) ; 4x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_003`16)
brace_close_01_003:

#d8 (OP_INC_PTR | 0x3) ; 3x >
#d8 (OP_INC_VAL | 0x3) ; 3x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_003`16)
brace_close_00_003:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_004`16)
brace_open_00_004:

#d8 (OP_DEC_PTR | 0x4) ; 4x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_004`16)
brace_close_00_004:

#d8 (OP_DEC_PTR | 0x8) ; 8x <
#d8 (OP_INC_VAL | 0x1) ; 1x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_005`16)
brace_open_00_005:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0xC) ; 12x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_004`16)
brace_open_01_004:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_002`16)
brace_open_02_002:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x4) ; 4x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x4) ; 4x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_002`16)
brace_close_02_002:

#d8 (OP_INC_PTR | 0x5) ; 5x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_004`16)
brace_close_01_004:

#d8 (OP_DEC_PTR | 0x4) ; 4x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_005`16)
brace_open_01_005:

#d8 (OP_INC_PTR | 0x5) ; 5x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_003`16)
brace_open_02_003:

#d8 (OP_DEC_PTR | 0x4) ; 4x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x4) ; 4x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_003`16)
brace_close_02_003:

#d8 (OP_DEC_PTR | 0x5) ; 5x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_004`16)
brace_open_02_004:

#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_INC_VAL | 0xA) ; 10x +
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_004`16)
brace_close_02_004:

#d8 (OP_INC_PTR | 0x3) ; 3x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_005`16)
brace_open_02_005:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_000`16)
brace_open_03_000:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x3) ; 3x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_000`16)
brace_close_03_000:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_001`16)
brace_open_03_001:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_001`16)
brace_close_03_001:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x6) ; 6x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_005`16)
brace_close_02_005:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_006`16)
brace_open_02_006:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_006`16)
brace_close_02_006:

#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_007`16)
brace_open_02_007:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_002`16)
brace_open_03_002:

#d8 (OP_INC_PTR | 0x3) ; 3x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_002`16)
brace_close_03_002:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_003`16)
brace_open_03_003:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_000`16)
brace_open_04_000:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_000`16)
brace_close_04_000:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_003`16)
brace_close_03_003:

#d8 (OP_DEC_PTR | 0x5) ; 5x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_007`16)
brace_close_02_007:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_008`16)
brace_open_02_008:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_008`16)
brace_close_02_008:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x3) ; 3x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_009`16)
brace_open_02_009:

#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_009`16)
brace_close_02_009:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_005`16)
brace_close_01_005:

#d8 (OP_DEC_PTR | 0x4) ; 4x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x8) ; 8x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_006`16)
brace_open_01_006:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_006`16)
brace_close_01_006:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_007`16)
brace_open_01_007:

#d8 (OP_DEC_PTR | 0x3) ; 3x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x3) ; 3x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_007`16)
brace_close_01_007:

#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_INC_VAL | 0xA) ; 10x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_008`16)
brace_open_01_008:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_010`16)
brace_open_02_010:

#d8 (OP_INC_PTR | 0x3) ; 3x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_010`16)
brace_close_02_010:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_011`16)
brace_open_02_011:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_004`16)
brace_open_03_004:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_004`16)
brace_close_03_004:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_011`16)
brace_close_02_011:

#d8 (OP_DEC_PTR | 0x5) ; 5x <

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

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_010`16)
brace_open_01_010:

#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x3) ; 3x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_010`16)
brace_close_01_010:

#d8 (OP_DEC_PTR | 0x4) ; 4x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_011`16)
brace_open_01_011:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_012`16)
brace_open_02_012:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_005`16)
brace_open_03_005:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_001`16)
brace_open_04_001:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_05_000`16)
brace_open_05_000:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_06_000`16)
brace_open_06_000:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_07_000`16)
brace_open_07_000:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_08_000`16)
brace_open_08_000:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_09_000`16)
brace_open_09_000:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_10_000`16)
brace_open_10_000:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x2) ; 2x >

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
#d16 le(brace_open_07_000`16)
brace_close_07_000:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_06_000`16)
brace_close_06_000:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_05_000`16)
brace_close_05_000:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_001`16)
brace_close_04_001:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_005`16)
brace_close_03_005:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_012`16)
brace_close_02_012:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_011`16)
brace_close_01_011:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_012`16)
brace_open_01_012:

#d8 (OP_INC_VAL | 0x5) ; 5x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_013`16)
brace_open_02_013:

#d8 (OP_DEC_PTR | 0x3) ; 3x <
#d8 (OP_INC_VAL | 0x8) ; 8x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x8) ; 8x +
#d8 (OP_INC_PTR | 0x4) ; 4x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_013`16)
brace_close_02_013:

#d8 (OP_DEC_PTR | 0x4) ; 4x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x4) ; 4x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_014`16)
brace_open_02_014:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x3) ; 3x <
#d8 (OP_INC_VAL | 0x9) ; 9x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x3) ; 3x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_014`16)
brace_close_02_014:

#d8 (OP_DEC_PTR | 0x5) ; 5x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_015`16)
brace_open_02_015:

#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_015`16)
brace_close_02_015:

#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_016`16)
brace_open_02_016:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_016`16)
brace_close_02_016:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_017`16)
brace_open_02_017:

#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_PTR | 0x4) ; 4x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_006`16)
brace_open_03_006:

#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_002`16)
brace_open_04_002:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_002`16)
brace_close_04_002:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_006`16)
brace_close_03_006:

#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_017`16)
brace_close_02_017:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_018`16)
brace_open_02_018:

#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_018`16)
brace_close_02_018:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_019`16)
brace_open_02_019:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_019`16)
brace_close_02_019:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_020`16)
brace_open_02_020:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_020`16)
brace_close_02_020:

#d8 (OP_INC_PTR | 0x3) ; 3x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_021`16)
brace_open_02_021:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_007`16)
brace_open_03_007:

#d8 (OP_DEC_PTR | 0x8) ; 8x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x8) ; 8x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_007`16)
brace_close_03_007:

#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_021`16)
brace_close_02_021:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_012`16)
brace_close_01_012:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_013`16)
brace_open_01_013:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_013`16)
brace_close_01_013:

#d8 (OP_DEC_PTR | 0x3) ; 3x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_014`16)
brace_open_01_014:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_014`16)
brace_close_01_014:

#d8 (OP_DEC_PTR | 0x8) ; 8x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_005`16)
brace_close_00_005:

#d8 (OP_INC_VAL | 0xA) ; 10x +
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 OP_END ; END