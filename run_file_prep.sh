#!/bin/bash

for f in $(cut -f1 language.fam)
do
	echo $f
	cd $f
	grep -wFf <(cut -f1 test.pop.list) /mnt/scratch/dang/Vietnam/map/all.map.am.geo.info2 > test.pop.ind
	plink --bfile ../HO.M2.outgroup --keep test.pop.ind --allow-no-sex --make-bed --out test
	plink --bfile test --indep-pairwise 200 25 0.4 --out test
	plink --bfile test --extract test.prune.in --allow-no-sex --make-bed --out test.pruned
	plink --bfile test.pruned --freq --within /mnt/scratch/dang/Vietnam/map/all.map.am.geo.info2 --out test
	gzip test.frq.strat
	python2.7 ~/bin/pythonscripts/plink2treemix.py test.frq.strat.gz test.TreeMix.frq.gz
	../run_treemix.sh test.TreeMix.frq.gz Mbuti
	cd ../
done
