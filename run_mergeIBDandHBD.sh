#!/bin/bash
gunzip *.ibd.gz
gunzip *.hbd.gz

for chromosome in {1..22}; do
cat RefinedIBD_RUN1.${chromosome}.ibd RefinedIBD_RUN1.${chromosome}.hbd | java -jar ~/bin/BEAGLE/merge-ibd-segments.jar shapeitPhased${chromosome}.vcf chr${chromosome}.map 0.6 1 > Chr${chromosome}.IBDandHBD.Merged
done

cat *.IBDandHBD.Merged > all.lPSC.Merged
