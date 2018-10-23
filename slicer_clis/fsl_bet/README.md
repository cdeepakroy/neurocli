FSL Brain Extraction CLI
========================

Strips out the skill from a neuro image using FSL's Brain Extraction 
Tool (BET).

```
fsl_bet.py [-h] [-V] [--xml]
                  [--output_type {NIFTI_PAIR,NIFTI_PAIR_GZ,NIFTI_GZ,NIFTI}]
                  in_file out_file

positional arguments:
  in_file               Input image to skill strip (type: image) (file-
                        extensions: ['.nii'])
  out_file              Output skill stripped image (type: image) (file-
                        extensions: ['.nii'])

optional arguments:
  -h, --help            show this help message and exit
  -V, --version         show program's version number and exit
  --xml                 Produce xml description of command line arguments
  --output_type {NIFTI_PAIR,NIFTI_PAIR_GZ,NIFTI_GZ,NIFTI}
                        Format of the output skill stripped image (default:
                        NIFTI)

Title: FSL Brain Extraction

Description: FSL's Brain Extraction Tool (BET)

Author(s): Deepak Roy Chittajallu (Kitware)

License: Apache 2.0
```