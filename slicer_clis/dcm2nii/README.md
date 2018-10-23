Dcm2nii CLI
===========

Converts an image in dicom format to Nifti

#### Usage:

```
dcm2nii.py [-h] [-V] [--xml] [-a <boolean>] [-b <file>] [-g <boolean>]
                  [-n <boolean>]
                  source_dir output_dir

positional arguments:
  source_dir     Directory containing the dicom files that need to be
                 converted (type: directory)
  output_dir     Directory in which the converted file will be placed (type:
                 directory)

optional arguments:
  -h, --help     show this help message and exit
  -V, --version  show program's version number and exit
  --xml          Produce xml description of command line arguments
  -a <boolean>   Remove identifying information (default: True)
  -b <file>      inifile containing the configuration settings to use (file-
                 extensions: ['.ini'])
  -g <boolean>   Save output as .gz (true/false) (default: False)
  -n <boolean>   Save output as .nii (true/false) (default: True)

Title: Dcm2nii

Description: Converst dicom files to Nifti

Author(s): Deepak Roy Chittajallu (Kitware)

License: Apache 2.0
```
 