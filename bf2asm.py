from collections import defaultdict
from io import StringIO

import argparse, re

OUT_FILE_PATTERN = R'{}.asm'

OPEN_BRACE_LABEL = 'brace_open_{level:02}_{number:03}'
CLOSE_BRACE_LABEL = 'brace_close_{level:02}_{number:03}'

LABEL_LINE_ENDING = ':\n'

JUMP_ADDR_FORMAT = '#d16 le({}`16)\n'

OPERATIONS = ('>', '<', '+', '-', '.', ',', '[', ']') # all BF operations

if __name__ == '__main__':
    parser = argparse.ArgumentParser(
        description = "Build asm file for Brainf*ck interpreter written in customasm assembly."
    )

    parser.add_argument('file', help='file to assemble; if not given, all files assembled')

    args = parser.parse_args()
    
    if args.file.endswith('.min.bf'):
        args.file = args.file[:-7] + '.bf' # replace '.min.bf' with '.bf'

    with open(args.file, 'r') as f:
        input = f.read()
    
    input = ''.join(c for c in input if c in OPERATIONS) + ' ' # make input a string containing only operations. Add an invalid operation at the end (' ') to flush the previous operation.

    output = StringIO()

    label_level = 0
    label_numbers = defaultdict(int)

    opcode_count = 0
    last_opcode = None # no opcode at startup

    for c in input:
        if (c == last_opcode and opcode_count < 0xF and last_opcode not in ('[', ']')): # if current opcode is the same as the previous one, just increment the opcode count if lower than maximum number (0x10). else, commit the previous opcode and start counting the new one. If last opcode was a jump, commit it right away.
            opcode_count += 1
        else:
            if last_opcode == '>':
                output.write(f'#d8 (OP_INC_PTR | 0x{opcode_count:01X}) ; {opcode_count}x >\n')
            elif last_opcode == '<':
                output.write(f'#d8 (OP_DEC_PTR | 0x{opcode_count:01X}) ; {opcode_count}x <\n')
            elif last_opcode == '+':
                output.write(f'#d8 (OP_INC_VAL | 0x{opcode_count:01X}) ; {opcode_count}x +\n')
            elif last_opcode == '-':
                output.write(f'#d8 (OP_DEC_VAL | 0x{opcode_count:01X}) ; {opcode_count}x -\n')
            elif last_opcode == '.':
                output.write(f'#d8 (OP_PUT_VAL | 0x{opcode_count:01X}) ; {opcode_count}x .\n')
            elif last_opcode == ',':
                output.write(f'#d8 (OP_GET_VAL | 0x{opcode_count:01X}) ; {opcode_count}x ,\n')
            elif last_opcode == '[':
                output.write('\n#d8 OP_JMP_FWD ; [\n')
                output.write(JUMP_ADDR_FORMAT.format(CLOSE_BRACE_LABEL.format(level=label_level, number=label_numbers[label_level])))

                output.write(OPEN_BRACE_LABEL.format(level=label_level, number=label_numbers[label_level]) + LABEL_LINE_ENDING) # label AFTER opcode to prevent a useless double test of zero

                label_level += 1 # post-increment
            elif last_opcode == ']':
                label_level -= 1 # pre-decrement

                if label_level < 0:
                    raise SyntaxError("Brace mismatch in Brainf*ck parser.")

                output.write('\n#d8 OP_JMP_BCK ; ]\n')
                output.write(JUMP_ADDR_FORMAT.format(OPEN_BRACE_LABEL.format(level=label_level, number=label_numbers[label_level])))

                output.write(CLOSE_BRACE_LABEL.format(level=label_level, number=label_numbers[label_level]) + LABEL_LINE_ENDING) # label AFTER opcode to prevent a useless double test of zero

                label_numbers[label_level] += 1 # increment label number for next pair at this level

            last_opcode = c # make last opcode the current one
            opcode_count = 1 # already 1 occurrence

    output.write('#d8 OP_END ; END') # end the program with an END opcode

    if label_level != 0:
        raise SyntaxError("Brace mismatch in Brainf*ck parser.")

    with open(OUT_FILE_PATTERN.format(args.file), 'w') as f:
        f.write(output.getvalue())
    
    output.close()
    

