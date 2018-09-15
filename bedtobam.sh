#!/bin/bash -l

module load bedtools/2.24.0

for filename in ./*nonnegative.bed ; do


bedtools bedtobam -i "$filename"    -g ./hg38.genome >  ./$(basename "$filename" .bed).bam






done

