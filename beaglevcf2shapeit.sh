#!/bin/bash
for chromosome in {1..22}; do
	bcftools convert --hapsample BeaglePhased${chromosome} --vcf-ids BeaglePhased${chromosome}.vcf.gz
done
gunzip BeaglePhased*.hap.gz
rename 's/\.hap/.haps/g' BeaglePhased*.hap
