#!/bin/bash

input=$1
Outgroup=$2
prefix=$(echo $input | sed 's/\.TreeMix\.frq\.gz//' )

gzip -f -d $input
python2 -m admixturebayes run --input_file $prefix.TreeMix.frq --outgroup $Outgroup --n 300000 --stop_criteria
python2 -m admixturebayes posterior --input_file result_mc3.csv --covariance_matrix_file covariance_and_multiplier.txt --outgroup_name $Outgroup 
python2 -m admixturebayes qp --posterior_distribution_file posterior_distributions.csv
#python2 -m admixturebayes plot --posterior_distribution_file posteriors_small.csv --plot consensus_trees --write_ranking_to_file rankings.txt
python2 -m admixturebayes plot --plot consensus_trees --posterior_distribution_file posterior_distributions.csv
python2 -m admixturebayes plot --plot top_node_trees --posterior_distribution_file posterior_distributions.csv
python2 -m admixturebayes plot --plot top_trees --posterior_distribution_file posterior_distributions.csv
