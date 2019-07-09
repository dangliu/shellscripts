#!/bin/bash
for chromosome in {1..22}; do
        ~/bin/shapeit/bin/shapeit -check \
        --input-vcf splitted_${chromosome}.vcf.gz \
        -M genetic_map_chr${chromosome}_combined_b37.txt \
        --output-log check_${chromosome} \
        --input-ref ~/bin/shapeit/1000GP_Phase3/1000GP_Phase3_chr${chromosome}.hap.gz ~/bin/shapeit/1000GP_Phase3/1000GP_Phase3_chr${chromosome}.legend.gz ~/bin/shapeit/1000GP_Phase3/1000GP_Phase3.sample \
        --exclude-ind 1000G_Kinh \
        --include-grp EAS.SAS.list 
done


for chromosome in {1..22}; do
        ~/bin/shapeit/bin/shapeit \
        --input-vcf splitted_${chromosome}.vcf.gz \
        --input-ref ~/bin/shapeit/1000GP_Phase3/1000GP_Phase3_chr${chromosome}.hap.gz ~/bin/shapeit/1000GP_Phase3/1000GP_Phase3_chr${chromosome}.legend.gz ~/bin/shapeit/1000GP_Phase3/1000GP_Phase3.sample \
        --exclude-ind 1000G_Kinh \
        --include-grp EAS.SAS.list \
        --exclude-snp check_${chromosome}.snp.strand.exclude \
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
