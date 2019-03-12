#!/bin/bash
for run in {1..3}; do
for chromosome in {1..22}; do
	seed=$RANDOM
	java  -Xss5m  -Xmx4g -jar ~/bin/BEAGLE/beagle.5.0.jar gt=splitted_${chromosome}.vcf.gz  map=referenceFromMyData_Chr${chromosome}.map seed=$seed out=RUN${run}_Beagle5Phased${chromosome}
done
done
