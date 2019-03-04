#!/bin/bash
input1=$1
input2=$2
input3=$3
prefix3=$(echo $input3 | sed 's/\.P\.txt//')
input4=$4

while read l
do
	echo "$l"
	echo "$l" > tmp.$prefix3.txt
	tag=$(cut -f 2 tmp.$prefix3.txt)
	plink --bfile $input2 --keep tmp.$prefix3.txt --allow-no-sex --make-bed --out tmp.$prefix3
	echo "plink tmp out!"
	~/bin/fastNGSadmix/fastNGSadmix -plink tmp.$prefix3 -fname $input3 -Nname $input4 -out $prefix3.$tag.boot -whichPops all -boot 100 -seed 1
	echo "fastNGSadmix done!"
	head -n 2 $prefix3.$tag.boot.qopt | tail -n 1 >> $prefix3.boot.converg
done <$input1

paste -d"\t" <( awk -F "\t" '{ print $1, $2 }' $input1 ) $prefix3.boot.converg > Tag.$prefix3.boot.converg

rm tmp.$prefix3*

echo "All done!"
