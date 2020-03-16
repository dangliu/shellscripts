#!/bin/bash
for chr in {1..22}; do
	~/bin/CHROMOPAINTER/impute2chromopainter2.pl shapeitPhased${chr}.haps  genetic_map_chr${chr}_combined_b37.txt CP_in_chr${chr}
done
for chr in {1,5,10,15,20}; do
        ~/bin/CHROMOPAINTER/impute2chromopainter2.pl Downsample_4_Phased${chr}.haps  genetic_map_chr${chr}_combined_b37.txt Downsample_CP_in_chr${chr}
done
