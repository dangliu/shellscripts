#!/bin/bash
input=$1
prefix=$(echo $input | sed 's/\.bed//')
n_K=$2
n_run=$3

for n in $(seq 1 $n_run);
do
	echo "This is the '$n'th run..."
	for K in $(seq 1 $n_K);
	do
        admixture -s time -j32 --cv=10 $input $K | tee $prefix.K${K}.out;
	done
	#./run_admixture.sh $input
	grep -h CV $prefix*.out | awk '{print $3"\t"$4}' | sed 's/(K=//g' | sed 's/)://g' >> $prefix.CV_1-$n_K.log
done


