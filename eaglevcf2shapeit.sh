#!/bin/bash
for chromosome in {1..22}; do
	bcftools convert --hapsample EaglePhased${chromosome} --vcf-ids EaglePhased${chromosome}.vcf.gz
done
gunzip EaglePhased*.hap.gz
rename 's/\.hap/.haps/g' EaglePhased*.hap
