#!/bin/bash
input=$1

for chr in `bcftools view -h $input  | perl -ne 'if (/^##contig=<ID=([^,]+)/) { if (length($1)<=2) {print "$1\n"} }'`;
do
  bcftools view -Oz -r $chr $input  > splitted_$chr.vcf.gz
done
