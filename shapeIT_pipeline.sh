#!/bin/bash
for chromosome in {1..22}; do
        ~/bin/shapeit/bin/shapeit \
        --input-vcf splitted_${chromosome}.vcf.gz \
        -M genetic_map_chr${chromosome}_combined_b37.txt \
        --burn 10 \
        --prune 10 \
        --main 30 \
        --states 500 \
        --effective-size 15000 \
        -O shapeitPhased${chromosome} \
        --output-log shapeitPhased${chromosome} \
        --thread 20
        ~/bin/shapeit/bin/shapeit -convert --input-haps shapeitPhased${chromosome} --output-vcf shapeitPhased${chromosome}.vcf --output-log haps2vcf${chromosome} --thread 16 
done
