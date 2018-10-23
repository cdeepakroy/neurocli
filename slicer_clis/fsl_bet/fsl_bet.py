from __future__ import print_function

from nipype.interfaces import fsl

from ctk_cli import CLIArgumentParser

import logging
logging.basicConfig(level=logging.CRITICAL)


def main(args):

    print('\n>> CLI Parameters ...\n')
    print(args)

    skstrip = fsl.BET()

    skstrip.inputs.in_file = args.in_file
    skstrip.inputs.out_file = args.out_file
    skstrip.inputs.output_type = args.output_type

    print('\n>> Running BET ... \n')
    print(skstrip.cmdline)

    res = skstrip.run()


if __name__ == "__main__":
    main(CLIArgumentParser().parse_args())