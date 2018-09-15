#!/bin/bash -l
module load fastqc


for filename in ./*P.fq.gz ;
do
fastqc -o .  "$filename" ;

done
