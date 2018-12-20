NEUROCLI
========

This repo wraps a set of command-line utilities for analysis of neuroimaging data from neurodebian into Slicer CLIs and containerizes them into docker so they can called over the web through Girder's Item Tasks plugin.

The following command-line utilities are currently wrapper:
* **dcm2nii**: converts images in dicom format to Nifti.
* **fsl bet**: Strips out the skull from neuro images.
 
