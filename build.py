import glob, argparse, subprocess, shlex, pathlib
import os.path


SRC_FILE_PATTERN = R'.\src\{file}'
OUT_DIR = R'.\out\{conf}'
OUT_FILE_PATTERN = OUT_DIR + R'\{file}.{file_ext}'

CUSTOMASM_COMMAND = R'"..\customasm\customasm.exe" -f {file_format} -o "{out}" "{src}"'

if __name__ == '__main__':
    parser = argparse.ArgumentParser(
        description = "Build asm files using customasm (Visual Studio's custom build toolchain is bad)"
    )

    parser.add_argument('-d', '--debug',
                        choices=['annotated', 'annotatedbin', 'binstr', 'hexstr',
                                'bindump', 'hexdump', 'mif', 'intelhex', 'deccomma', 'hexcomma',
                                'decc', 'hexc', 'logisim8', 'logisim16'],
                        help='create debug file')
    parser.add_argument('-o', '--output-name', help='change output file name (single file only)')
    parser.add_argument('file', nargs='?', help='file to assemble; if not given : all files assembled', default='*.asm')

    args = parser.parse_args()

    conf = f'debug\{args.debug}' if args.debug else 'release'
    pathlib.Path(OUT_DIR.format(conf=conf)).mkdir(parents=True, exist_ok=True)

    file_format = args.debug if args.debug else 'binary'

    if file_format == 'binary':
        file_ext = 'bin'
    elif file_format == 'intelhex':
        file_ext = 'hex'
    else:
        file_ext = 'txt'

    path_list = glob.glob(SRC_FILE_PATTERN.format(file=args.file))

    if len(path_list) == 0:
        parser.error('No file found, exiting...')

    if len(path_list) > 1 and args.name:
        parser.error(f'The output file name can only be supplied for a single file, {len(path_list)} were found. Exiting...')

    command_list = [CUSTOMASM_COMMAND.format(file_format=file_format, out=OUT_FILE_PATTERN.format(conf=conf, file=(os.path.splitext(os.path.basename(args.name if args.name else path))[0]), file_ext=file_ext), src=path) for path in path_list] # splitext returns (file, ext)

    for c in command_list:
        command = shlex.split(c)
        print()
        subprocess.run(command)

