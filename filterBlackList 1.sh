#! /bin/bash -l
module load bedtools/2.25.0
for peak in /restricted/projectnb/chengcancer/Simon/project/T2D/ATAC-seq/8callPeaknew/*narrowPeak
do
file_name=$(basename $peak .narrowPeak)
bedtools intersect -a "$peak" -b /restricted/projectnb/chengcancer/Simon/project/T2D/ATAC-seq/hg38.blacklist.bed  -v > /restricted/projectnb/chengcancer/Simon/project/T2D/ATAC-seq/8callPeaknew/"${file_name}".filtered.narrowPeak
done
