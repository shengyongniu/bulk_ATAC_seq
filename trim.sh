#!/bin/bash -l

module load trimmomatic/0.33

for filename in /restricted/projectnb/chengcancer/Simon/project/T2D/ATAC-seq/NextSeq/0raw/merge/*_R1_001.fastq.gz 

do

java -jar $SCC_TRIMMOMATIC_BIN/trimmomatic.jar PE  "$filename"  /restricted/projectnb/chengcancer/Simon/project/T2D/ATAC-seq/NextSeq/0raw/merge/$(basename "$filename" R1_001.fastq.gz)R2_001.fastq.gz  /restricted/projectnb/chengcancer/Simon/project/T2D/ATAC-seq/NextSeq/0raw/merge/$(basename "$filename" R1_001.fastq.gz)1P.fq.gz  /restricted/projectnb/chengcancer/Simon/project/T2D/ATAC-seq/NextSeq/0raw/merge/$(basename "$filename" R1_001.fastq.gz)1U.fq.gz  /restricted/projectnb/chengcancer/Simon/project/T2D/ATAC-seq/NextSeq/0raw/merge/$(basename "$filename" R1_001.fastq.gz)2P.fq.gz   /restricted/projectnb/chengcancer/Simon/project/T2D/ATAC-seq/NextSeq/0raw/merge/$(basename "$filename" R1_001.fastq.gz)2U.fq.gz   HEADCROP:12


done
