#! /bin/bash -l
module load bedtools/2.25.0
for peak in ./*narrowPeak
do
file_name=$(basename $peak .narrowPeak)
bedtools intersect -a "$peak" -b ./hg38.blacklist.bed  -v > ./"${file_name}".filtered.narrowPeak
done
