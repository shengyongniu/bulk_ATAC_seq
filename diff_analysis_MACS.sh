#!/bin/bash -l

## Use MACS2 to call peaks, and  perform  differential peak analysis with shifted bed files

module load python/2.7.7
module load macs/2.1.0.20150731


for filename in ./*.trimmed.shifted.bam ; do

macs2 predictd -i "$filename" 

macs2 callpeak -B -t "$filename"  -c ./*.trimmed.shifted.bam -n ATAC --nomodel --extsize 200




macs2 callpeak -t "$filename"  -f BED -g hs -nomodel --nolambda --keep-dup all --call-summits --outdir .  -n $(basename "$filename" .bed) -B -q 0.01



done

