#!/bin/bash

echo 'starting headless calculation of LIDI for all fchk files in a folder'

# Note: if you only have chk files, first run the following command:
#  for $ff in *.chk; do formchk $ff; done

# Note also that Multiwfn must be on the PATH


echo $PWD

export KMP_STACKSIZE=2000M
ulimit -s unlimited

for ff in *.fchk
do
	echo Running ${ff}
	base=${ff%.*}
	Multiwfn ${ff} -n2 > ${base}-mwfn.out << EOF
15
4
y
q
EOF
	mv LIDI.txt ${base}-LIDI.txt

done
