#d8 (OP_INC_PTR | 0x5) ; 5x >
#d8 (OP_INC_VAL | 0x1) ; 1x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_000`16)
brace_open_00_000:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x7) ; 7x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_000`16)
brace_open_01_000:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x4) ; 4x +
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_000`16)
brace_close_01_000:

#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x5) ; 5x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_001`16)
brace_open_01_001:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x6) ; 6x +
#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_001`16)
brace_close_01_001:

#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x3) ; 3x >
#d8 (OP_GET_VAL | 0x1) ; 1x ,
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x2) ; 2x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_002`16)
brace_open_01_002:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_000`16)
brace_open_02_000:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_000`16)
brace_open_03_000:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_000`16)
brace_close_03_000:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_001`16)
brace_open_03_001:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_001`16)
brace_close_03_001:

#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_000`16)
brace_close_02_000:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_001`16)
brace_open_02_001:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_001`16)
brace_close_02_001:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_002`16)
brace_open_02_002:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_002`16)
brace_close_02_002:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_003`16)
brace_open_02_003:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_002`16)
brace_open_03_002:


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

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_002`16)
brace_close_03_002:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_003`16)
brace_open_03_003:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_001`16)
brace_open_04_001:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_05_000`16)
brace_open_05_000:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_05_000`16)
brace_close_05_000:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_001`16)
brace_close_04_001:

#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_002`16)
brace_open_04_002:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x9) ; 9x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_05_001`16)
brace_open_05_001:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_05_001`16)
brace_close_05_001:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_002`16)
brace_close_04_002:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_003`16)
brace_close_03_003:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_003`16)
brace_close_02_003:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_002`16)
brace_close_01_002:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_003`16)
brace_open_01_003:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_003`16)
brace_close_01_003:

#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_004`16)
brace_open_01_004:

#d8 (OP_DEC_VAL | 0x2) ; 2x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_004`16)
brace_open_02_004:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_004`16)
brace_open_03_004:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_004`16)
brace_close_03_004:

#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x3) ; 3x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_004`16)
brace_close_02_004:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_005`16)
brace_open_02_005:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x4) ; 4x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_005`16)
brace_open_03_005:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_005`16)
brace_close_03_005:

#d8 (OP_INC_PTR | 0x6) ; 6x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_005`16)
brace_close_02_005:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_004`16)
brace_close_01_004:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_005`16)
brace_open_01_005:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_005`16)
brace_close_01_005:

#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_INC_PTR | 0x3) ; 3x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_006`16)
brace_open_01_006:

#d8 (OP_DEC_PTR | 0x3) ; 3x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x3) ; 3x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_006`16)
brace_close_01_006:

#d8 (OP_DEC_PTR | 0x3) ; 3x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_000`16)
brace_close_00_000:

#d8 (OP_INC_PTR | 0x3) ; 3x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x4) ; 4x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_001`16)
brace_open_00_001:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_001`16)
brace_close_00_001:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_00_002`16)
brace_open_00_002:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_007`16)
brace_open_01_007:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_007`16)
brace_close_01_007:

#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_008`16)
brace_open_01_008:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_006`16)
brace_open_02_006:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_006`16)
brace_open_03_006:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_003`16)
brace_open_04_003:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_05_002`16)
brace_open_05_002:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_06_000`16)
brace_open_06_000:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_07_000`16)
brace_open_07_000:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_08_000`16)
brace_open_08_000:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_08_000`16)
brace_close_08_000:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_08_001`16)
brace_open_08_001:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_08_001`16)
brace_close_08_001:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_08_002`16)
brace_open_08_002:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_08_002`16)
brace_close_08_002:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_08_003`16)
brace_open_08_003:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_08_003`16)
brace_close_08_003:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_07_000`16)
brace_close_07_000:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_07_001`16)
brace_open_07_001:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_08_004`16)
brace_open_08_004:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_08_004`16)
brace_close_08_004:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_08_005`16)
brace_open_08_005:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_08_005`16)
brace_close_08_005:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_GET_VAL | 0x1) ; 1x ,
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_08_006`16)
brace_open_08_006:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_08_006`16)
brace_close_08_006:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_08_007`16)
brace_open_08_007:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_08_007`16)
brace_close_08_007:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_07_001`16)
brace_close_07_001:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_06_000`16)
brace_close_06_000:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_06_001`16)
brace_open_06_001:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_07_002`16)
brace_open_07_002:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_07_002`16)
brace_close_07_002:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_07_003`16)
brace_open_07_003:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_07_003`16)
brace_close_07_003:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_07_004`16)
brace_open_07_004:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_07_004`16)
brace_close_07_004:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_07_005`16)
brace_open_07_005:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_07_005`16)
brace_close_07_005:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_06_001`16)
brace_close_06_001:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_05_002`16)
brace_close_05_002:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_05_003`16)
brace_open_05_003:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_06_002`16)
brace_open_06_002:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_06_002`16)
brace_close_06_002:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_06_003`16)
brace_open_06_003:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_06_003`16)
brace_close_06_003:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_PUT_VAL | 0x1) ; 1x .
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_06_004`16)
brace_open_06_004:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_06_004`16)
brace_close_06_004:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_06_005`16)
brace_open_06_005:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_06_005`16)
brace_close_06_005:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_05_003`16)
brace_close_05_003:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_003`16)
brace_close_04_003:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_004`16)
brace_open_04_004:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_05_004`16)
brace_open_05_004:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_05_004`16)
brace_close_05_004:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_05_005`16)
brace_open_05_005:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_05_005`16)
brace_close_05_005:

#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_05_006`16)
brace_open_05_006:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_05_006`16)
brace_close_05_006:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_05_007`16)
brace_open_05_007:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_05_007`16)
brace_close_05_007:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_004`16)
brace_close_04_004:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_006`16)
brace_close_03_006:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_007`16)
brace_open_03_007:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_005`16)
brace_open_04_005:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_005`16)
brace_close_04_005:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_006`16)
brace_open_04_006:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_006`16)
brace_close_04_006:

#d8 (OP_INC_VAL | 0x1) ; 1x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_007`16)
brace_open_04_007:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_007`16)
brace_close_04_007:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_008`16)
brace_open_04_008:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_008`16)
brace_close_04_008:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_007`16)
brace_close_03_007:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_006`16)
brace_close_02_006:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_007`16)
brace_open_02_007:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_008`16)
brace_open_03_008:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_008`16)
brace_close_03_008:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_009`16)
brace_open_03_009:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_009`16)
brace_close_03_009:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_010`16)
brace_open_03_010:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x3) ; 3x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_010`16)
brace_close_03_010:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_011`16)
brace_open_03_011:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_011`16)
brace_close_03_011:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_012`16)
brace_open_03_012:

#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_009`16)
brace_open_04_009:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_009`16)
brace_close_04_009:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_012`16)
brace_close_03_012:

#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_013`16)
brace_open_03_013:

#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_013`16)
brace_close_03_013:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_014`16)
brace_open_03_014:

#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x4) ; 4x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_014`16)
brace_close_03_014:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_015`16)
brace_open_03_015:

#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_015`16)
brace_close_03_015:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_016`16)
brace_open_03_016:

#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_016`16)
brace_close_03_016:

#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_017`16)
brace_open_03_017:

#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_017`16)
brace_close_03_017:

#d8 (OP_DEC_PTR | 0x4) ; 4x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_018`16)
brace_open_03_018:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_010`16)
brace_open_04_010:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_010`16)
brace_close_04_010:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_011`16)
brace_open_04_011:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_011`16)
brace_close_04_011:

#d8 (OP_DEC_PTR | 0x5) ; 5x <
#d8 (OP_INC_VAL | 0x2) ; 2x +
#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_018`16)
brace_close_03_018:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_019`16)
brace_open_03_019:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x6) ; 6x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_012`16)
brace_open_04_012:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_012`16)
brace_close_04_012:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_013`16)
brace_open_04_013:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_013`16)
brace_close_04_013:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_019`16)
brace_close_03_019:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_007`16)
brace_close_02_007:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_008`16)
brace_close_01_008:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_009`16)
brace_open_01_009:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_008`16)
brace_open_02_008:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_008`16)
brace_close_02_008:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_009`16)
brace_open_02_009:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_009`16)
brace_close_02_009:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_010`16)
brace_open_02_010:

#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x3) ; 3x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_010`16)
brace_close_02_010:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_011`16)
brace_open_02_011:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_020`16)
brace_open_03_020:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_020`16)
brace_close_03_020:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_021`16)
brace_open_03_021:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_021`16)
brace_close_03_021:

#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_011`16)
brace_close_02_011:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_012`16)
brace_open_02_012:

#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x4) ; 4x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_012`16)
brace_close_02_012:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_013`16)
brace_open_02_013:

#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_013`16)
brace_close_02_013:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_014`16)
brace_open_02_014:

#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_014`16)
brace_close_02_014:

#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_015`16)
brace_open_02_015:

#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_015`16)
brace_close_02_015:

#d8 (OP_DEC_PTR | 0x4) ; 4x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_016`16)
brace_open_02_016:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_022`16)
brace_open_03_022:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_022`16)
brace_close_03_022:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_023`16)
brace_open_03_023:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_023`16)
brace_close_03_023:

#d8 (OP_DEC_PTR | 0x5) ; 5x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_016`16)
brace_close_02_016:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_017`16)
brace_open_02_017:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x6) ; 6x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_024`16)
brace_open_03_024:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_024`16)
brace_close_03_024:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_025`16)
brace_open_03_025:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_025`16)
brace_close_03_025:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_017`16)
brace_close_02_017:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_009`16)
brace_close_01_009:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_010`16)
brace_open_01_010:

#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_010`16)
brace_close_01_010:

#d8 (OP_DEC_PTR | 0x6) ; 6x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_01_011`16)
brace_open_01_011:

#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_018`16)
brace_open_02_018:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x1) ; 1x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_026`16)
brace_open_03_026:

#d8 (OP_INC_PTR | 0x3) ; 3x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_014`16)
brace_open_04_014:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_014`16)
brace_close_04_014:

#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_015`16)
brace_open_04_015:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_05_008`16)
brace_open_05_008:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_06_006`16)
brace_open_06_006:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_06_006`16)
brace_close_06_006:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_06_007`16)
brace_open_06_007:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_06_007`16)
brace_close_06_007:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_05_008`16)
brace_close_05_008:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_05_009`16)
brace_open_05_009:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x3) ; 3x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x3) ; 3x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_05_009`16)
brace_close_05_009:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_015`16)
brace_close_04_015:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_016`16)
brace_open_04_016:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x3) ; 3x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x3) ; 3x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_016`16)
brace_close_04_016:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_017`16)
brace_open_04_017:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_017`16)
brace_close_04_017:

#d8 (OP_DEC_PTR | 0x4) ; 4x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_018`16)
brace_open_04_018:

#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_018`16)
brace_close_04_018:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_026`16)
brace_close_03_026:

#d8 (OP_DEC_PTR | 0x6) ; 6x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_018`16)
brace_close_02_018:

#d8 (OP_INC_PTR | 0x2) ; 2x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_02_019`16)
brace_open_02_019:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_INC_VAL | 0x1) ; 1x +

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_03_027`16)
brace_open_03_027:

#d8 (OP_INC_PTR | 0x3) ; 3x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_019`16)
brace_open_04_019:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_019`16)
brace_close_04_019:

#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_020`16)
brace_open_04_020:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_05_010`16)
brace_open_05_010:


#d8 OP_JMP_FWD ; [
#d16 le(brace_close_06_008`16)
brace_open_06_008:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_06_008`16)
brace_close_06_008:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_06_009`16)
brace_open_06_009:

#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_06_009`16)
brace_close_06_009:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_05_010`16)
brace_close_05_010:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_05_011`16)
brace_open_05_011:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x3) ; 3x <
#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_INC_PTR | 0x3) ; 3x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_05_011`16)
brace_close_05_011:

#d8 (OP_DEC_PTR | 0x1) ; 1x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_020`16)
brace_close_04_020:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_021`16)
brace_open_04_021:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x3) ; 3x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x3) ; 3x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_021`16)
brace_close_04_021:

#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_022`16)
brace_open_04_022:

#d8 (OP_DEC_VAL | 0x1) ; 1x -
#d8 (OP_DEC_PTR | 0x1) ; 1x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x1) ; 1x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_022`16)
brace_close_04_022:

#d8 (OP_DEC_PTR | 0x4) ; 4x <

#d8 OP_JMP_FWD ; [
#d16 le(brace_close_04_023`16)
brace_open_04_023:

#d8 (OP_DEC_PTR | 0x2) ; 2x <
#d8 (OP_INC_VAL | 0x1) ; 1x +
#d8 (OP_INC_PTR | 0x2) ; 2x >
#d8 (OP_DEC_VAL | 0x1) ; 1x -

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_04_023`16)
brace_close_04_023:

#d8 (OP_DEC_PTR | 0x2) ; 2x <

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_03_027`16)
brace_close_03_027:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_02_019`16)
brace_close_02_019:


#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_01_011`16)
brace_close_01_011:

#d8 (OP_INC_PTR | 0x7) ; 7x >

#d8 OP_JMP_BCK ; ]
#d16 le(brace_open_00_002`16)
brace_close_00_002:

#d8 OP_END ; END