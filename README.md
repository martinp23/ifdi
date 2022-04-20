# ifdi
Code associated with calculation of interfragment delocalization indices (IFDIs)


This repository comprises two script files, and example data:

* run-lidi.sh
  * This file is a bash script which will iterate over a directory containing multiple fchk files, and will calculate the LIDI matrix using Multiwfn for each.
* LIDI DPDA demo.ipynb
  * This Python/Jupyter notebook will allow a user to process a directory containing several LIDI and Multiwfn output files to obtain an IFDI vs torsion profile. The code is presented as a demonstration example and can be readily adapted for other purposes.
* demo/
  * This directory contains example data, in the form of LIDI.txt and Multiwfn output files for diphenyldiacetylene (DPDA) calculated at the B3LYP/6-31G* level of theory.   
