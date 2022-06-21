#!/bin/bash
for chromosome in {1..22}; do
	python ~/bin/consHap/consHap.py -CONS \
	-O consHap${chromosome} \
	-F ../shapeit2/shapeitPhased${chromosome} ../beagle5.1/BeaglePhased${chromosome} ../eagle2/EaglePhased${chromosome}
	~/bin/shapeit/bin/shapeit -convert --input-haps consHap${chromosome} --output-vcf consHap${chromosome}.vcf --output-log haps2vcf${chromosome} --thread 16
done
