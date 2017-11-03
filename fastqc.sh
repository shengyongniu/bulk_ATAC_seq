#!/bin/bash -l
module load fastqc


for filename in /restricted/projectnb/chengcancer/Simon/project/T2D/ATAC-seq/NextSeq/0raw/merge/*P.fq.gz ;
do
fastqc -o /restricted/projectnb/chengcancer/Simon/project/T2D/ATAC-seq/NextSeq/1fastqc/  "$filename" ;

done
