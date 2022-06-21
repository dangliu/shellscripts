#!/bin/bash
for chromosome in {1..22}; do
        seed=$RANDOM
        shapeit4 \
        -I splitted_${chromosome}.vcf.gz \
        -M genetic_map_chr${chromosome}_combined_b37.txt \
	-R ${chromosome} \
        --pbwt-depth 8 \
        --seed $seed \
        -O shapeit4Phased${chromosome}.vcf \
        --log shapeit4Phased${chromosome} \
        -T 20
done
