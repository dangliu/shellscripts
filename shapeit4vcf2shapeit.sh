#!/bin/bash
for chromosome in {1..22}; do
	bcftools convert --hapsample shapeit4Phased${chromosome} --vcf-ids shapeit4Phased${chromosome}.vcf
done
gunzip shapeit4Phased*.hap.gz
rename 's/\.hap/.haps/g' shapeit4Phased*.hap
