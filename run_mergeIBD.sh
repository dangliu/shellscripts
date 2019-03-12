#!/bin/bash
#gunzip *.ibd.gz

for chromosome in {1..22}; do
cat RefinedIBD_RUN1.${chromosome}.ibd RefinedIBD_RUN2.${chromosome}.ibd RefinedIBD_RUN3.${chromosome}.ibd > Chr${chromosome}.123.ibd
cat Chr${chromosome}.123.ibd | java -jar ~/bin/BEAGLE/merge-ibd-segments.jar RUN2_Beagle5Phased${chromosome}.vcf.gz referenceFromMyData_Chr${chromosome}.map 5 1 > Chr${chromosome}.IBD.Merged
done

cat *.IBD.Merged > all.refinedIBD.Merged
