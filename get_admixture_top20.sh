#!/bin/bash

for i in $(ls K*R*/*out); do echo -e ${i%/*}'\t'${i%_Run*/*}'\t'$(grep -P '^Loglikelihood'  $i)'\t'$i; done | grep -v only | cut -f1-3 | sed 's/Loglikelihood: //g' | grep K2 | sort -rnk 3 | head -n 20 > K2_top20
for i in $(ls K*R*/*out); do echo -e ${i%/*}'\t'${i%_Run*/*}'\t'$(grep -P '^Loglikelihood'  $i)'\t'$i; done | grep -v only | cut -f1-3 | sed 's/Loglikelihood: //g' | grep K3 | sort -rnk 3 | head -n 20 > K3_top20
for i in $(ls K*R*/*out); do echo -e ${i%/*}'\t'${i%_Run*/*}'\t'$(grep -P '^Loglikelihood'  $i)'\t'$i; done | grep -v only | cut -f1-3 | sed 's/Loglikelihood: //g' | grep K4 | sort -rnk 3 | head -n 20 > K4_top20
for i in $(ls K*R*/*out); do echo -e ${i%/*}'\t'${i%_Run*/*}'\t'$(grep -P '^Loglikelihood'  $i)'\t'$i; done | grep -v only | cut -f1-3 | sed 's/Loglikelihood: //g' | grep K5 | sort -rnk 3 | head -n 20 > K5_top20
for i in $(ls K*R*/*out); do echo -e ${i%/*}'\t'${i%_Run*/*}'\t'$(grep -P '^Loglikelihood'  $i)'\t'$i; done | grep -v only | cut -f1-3 | sed 's/Loglikelihood: //g' | grep K6 | sort -rnk 3 | head -n 20 > K6_top20
for i in $(ls K*R*/*out); do echo -e ${i%/*}'\t'${i%_Run*/*}'\t'$(grep -P '^Loglikelihood'  $i)'\t'$i; done | grep -v only | cut -f1-3 | sed 's/Loglikelihood: //g' | grep K7 | sort -rnk 3 | head -n 20 > K7_top20
for i in $(ls K*R*/*out); do echo -e ${i%/*}'\t'${i%_Run*/*}'\t'$(grep -P '^Loglikelihood'  $i)'\t'$i; done | grep -v only | cut -f1-3 | sed 's/Loglikelihood: //g' | grep K8 | sort -rnk 3 | head -n 20 > K8_top20
for i in $(ls K*R*/*out); do echo -e ${i%/*}'\t'${i%_Run*/*}'\t'$(grep -P '^Loglikelihood'  $i)'\t'$i; done | grep -v only | cut -f1-3 | sed 's/Loglikelihood: //g' | grep K9 | sort -rnk 3 | head -n 20 > K9_top20
for i in $(ls K*R*/*out); do echo -e ${i%/*}'\t'${i%_Run*/*}'\t'$(grep -P '^Loglikelihood'  $i)'\t'$i; done | grep -v only | cut -f1-3 | sed 's/Loglikelihood: //g' | grep K10 | sort -rnk 3 | head -n 20 > K10_top20
for i in $(ls K*R*/*out); do echo -e ${i%/*}'\t'${i%_Run*/*}'\t'$(grep -P '^Loglikelihood'  $i)'\t'$i; done | grep -v only | cut -f1-3 | sed 's/Loglikelihood: //g' | grep K11 | sort -rnk 3 | head -n 20 > K11_top20
for i in $(ls K*R*/*out); do echo -e ${i%/*}'\t'${i%_Run*/*}'\t'$(grep -P '^Loglikelihood'  $i)'\t'$i; done | grep -v only | cut -f1-3 | sed 's/Loglikelihood: //g' | grep K12 | sort -rnk 3 | head -n 20 > K12_top20
for i in $(ls K*R*/*out); do echo -e ${i%/*}'\t'${i%_Run*/*}'\t'$(grep -P '^Loglikelihood'  $i)'\t'$i; done | grep -v only | cut -f1-3 | sed 's/Loglikelihood: //g' | grep K13 | sort -rnk 3 | head -n 20 > K13_top20
for i in $(ls K*R*/*out); do echo -e ${i%/*}'\t'${i%_Run*/*}'\t'$(grep -P '^Loglikelihood'  $i)'\t'$i; done | grep -v only | cut -f1-3 | sed 's/Loglikelihood: //g' | grep K14 | sort -rnk 3 | head -n 20 > K14_top20
for i in $(ls K*R*/*out); do echo -e ${i%/*}'\t'${i%_Run*/*}'\t'$(grep -P '^Loglikelihood'  $i)'\t'$i; done | grep -v only | cut -f1-3 | sed 's/Loglikelihood: //g' | grep K15 | sort -rnk 3 | head -n 20 > K15_top20