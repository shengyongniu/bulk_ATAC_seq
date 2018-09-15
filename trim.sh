#!/bin/bash -l

module load trimmomatic/0.33

for filename in ./*_R1_001.fastq.gz 

do

java -jar $SCC_TRIMMOMATIC_BIN/trimmomatic.jar PE  "$filename"  ./$(basename "$filename" R1_001.fastq.gz)R2_001.fastq.gz  ./$(basename "$filename" R1_001.fastq.gz)1P.fq.gz  ./$(basename "$filename" R1_001.fastq.gz)1U.fq.gz  ./$(basename "$filename" R1_001.fastq.gz)2P.fq.gz  ./$(basename "$filename" R1_001.fastq.gz)2U.fq.gz   HEADCROP:12


done
