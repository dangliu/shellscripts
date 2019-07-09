#!/bin/bash

par_f=$1

for n in $(seq 1 10)
do
	echo "Run $n"
	qpGraph -p $par_f -g qp$n.graph -o qp$n.ggg -d qp$n.dot > qp$n.out
	dot -Tpng qp$n.dot -o qp$n.png
	#dot -Tpdf qp$n.dot -o qp$n.pdf
done
