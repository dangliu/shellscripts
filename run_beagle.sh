#!/bin/bash
for chromosome in {1..22}; do
	seed=$RANDOM
	java  -Xmx50g -jar ~/bin/BEAGLE/beagle.5.1.jar \
	gt=splitted_${chromosome}.vcf.gz \
	map=chr${chromosome}.map \
	burnin=12 \
	iterations=24 \
	phase-states=560 \
	ne=800000 \
	seed=$seed \
	nthreads=24 \
	out=BeaglePhased${chromosome}
done
