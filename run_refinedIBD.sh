#!/bin/bash
for chromosome in {1..22}; do
java -Xss5m  -Xmx4g -jar ~/bin/BEAGLE/refined-ibd.jar gt=shapeitPhased${chromosome}.vcf map=chr${chromosome}.map out=RefinedIBD_RUN1.$chromosome
done
