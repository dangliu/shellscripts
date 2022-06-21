#!/bin/bash
for chromosome in {1..22}; do
	~/bin/Eagle_v2.4.1/eagle \
	--vcf splitted_${chromosome}.vcf.gz \
	--geneticMapFile ~/bin/Eagle_v2.4.1/tables/genetic_map_hg19_withX.txt.gz \
	--chrom ${chromosome} \
	--Kpbwt 40000 \
	--numThreads 24 \
	--outPrefix EaglePhased${chromosome}
done
