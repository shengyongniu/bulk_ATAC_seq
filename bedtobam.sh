#!/bin/bash -l

module load bedtools/2.24.0

for filename in /restricted/projectnb/chengcancer/Simon/project/T2D/ATAC-seq/NextSeq/4shift/*nonnegative.bed ; do


bedtools bedtobam -i "$filename"    -g /restricted/projectnb/chengcancer/Simon/project/T2D/ATAC-seq/NextSeq/4shift/hg38.genome >  /restricted/projectnb/chengcancer/Simon/project/T2D/ATAC-seq/NextSeq/4shift/$(basename "$filename" .bed).bam






done

