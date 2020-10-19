#!/bin/bash

# A script to generate replicates parafiles for MAPS and run them parallely

main_path=($(pwd)"/")
para_path=${main_path}"parafiles/"
log_path=${main_path}"logfiles/"
lowerBound=$1
upperBound=$2
size_range=$(echo $lowerBound"_"$upperBound)
nIndiv=$(wc -l ${pt1}${size_range}'/maps_'${size_range}'.coord' | awk '{print $1}')
nReps=$3

for n in $(seq 1 $nReps); do
	echo 'datapath = '${main_path}${size_range}'/maps_'${size_range} > ${para_path}'params-'${size_range}'.sim'${n}'.ini'
	echo 'mcmcpath = '${main_path}${size_range}'/'${size_range}'-MAPS-sim'${n} >> ${para_path}'params-'${size_range}'.sim'${n}'.ini'
	echo 'nIndiv = '${nIndiv} >> ${para_path}'params-'${size_range}'.sim'${n}'.ini'
	echo 'nDemes = 200' >> ${para_path}'params-'${size_range}'.sim'${n}'.ini'
	echo 'seed = '$RANDOM >> ${para_path}'params-'${size_range}'.sim'${n}'.ini'
	echo 'genomeSize = 3000' >> ${para_path}'params-'${size_range}'.sim'${n}'.ini'
	echo 'numMCMCIter = 5000000' >> ${para_path}'params-'${size_range}'.sim'${n}'.ini'
	echo 'numBurnIter = 2000000' >> ${para_path}'params-'${size_range}'.sim'${n}'.ini'
	echo 'numThinIter = 2000' >> ${para_path}'params-'${size_range}'.sim'${n}'.ini'
	echo 'lowerBound = '${lowerBound} >> ${para_path}'params-'${size_range}'.sim'${n}'.ini'
	echo 'upperBound = '${upperBound} >> ${para_path}'params-'${size_range}'.sim'${n}'.ini'
	~/bin/MAPS/src/runeems2 --params ${para_path}'params-'${size_range}'.sim'${n}'.ini' &> ${log_path}${size_range}'.sim'${n}'.log' &
done



