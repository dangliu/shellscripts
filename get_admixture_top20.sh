#!/bin/bash

for K in $(seq 2 15);
do
	for i in $(ls K*R*/*out); do echo -e ${i%/*}'\t'${i%_Run*/*}'\t'$(grep -P '^Loglikelihood'  $i)'\t'$i; done | grep -v only | cut -f1-3 | sed 's/Loglikelihood: //g' | grep K$K | sort -rnk 3 | head -n 20 > K$K.top20
done
