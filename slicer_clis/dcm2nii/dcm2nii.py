from __future__ import print_function

from nipype.interfaces.dcm2nii import Dcm2nii

from ctk_cli import CLIArgumentParser

import logging
logging.basicConfig(level=logging.CRITICAL)


def main(args):

    print('\n>> CLI Parameters ...\n')
    print(args)

    converter = Dcm2nii()

    converter.inputs.source_dir = args.source_dir
    converter.inputs.output_dir = args.output_dir
    converter.inputs.anonymize = args.anonymize
    converter.inputs.nii_output = args.nii_output
    converter.inputs.gzip_output = args.gzip_output

    print('\n>> Running Dcm2nii ... \n')
    print(converter.cmdline)

    converter.run()


if __name__ == "__main__":
    main(CLIArgumentParser().parse_args())
