#!/bin/bash
for run in {1..3}; do
for chromosome in {1..22}; do
java -Xss5m  -Xmx4g -jar ~/bin/BEAGLE/refined-ibd.jar gt=RUN${run}_Beagle5Phased${chromosome}.vcf.gz map=referenceFromMyData_Chr${chromosome}.map out=RefinedIBD_RUN${run}.$chromosome
done
done
