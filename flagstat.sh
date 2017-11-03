#!/bin/bash -l

module load samtools

for file in *.sorted.bam ; do echo "${file}" >> batch5_flagstat_result.txt  ;  OUTPUT="$(samtools flagstat $file)" ; echo "${OUTPUT}" >> batch5_flagstat_result.txt  ; done
