from io import StringIO

import os, argparse

OUT_FILE_PATTERN = R'{}.min.bf'

if __name__ == '__main__':
    parser = argparse.ArgumentParser(
        description = "Build asm file for Brainf*ck interpreter written in customasm assembly."
    )

    parser.add_argument('file', help='file to assemble; if not given : all files assembled')

    args = parser.parse_args()

    with open(args.file, 'r') as f:
        input = f.read()

    output = StringIO()
    for c in input:
        if c in ('>', '<', '+', '-', '.', ',', '[', ']'):
            output.write(c)

    with open(OUT_FILE_PATTERN.format(os.path.splitext(args.file)[0]), 'w') as f: # get file without extension (splitext returns (filename, extension) tuple)
        f.write(output.getvalue())
    
    output.close()
    

