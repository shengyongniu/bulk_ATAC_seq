#!/bin/bash

FILE_COUNT=`find ./*.sorted.dedup.bam | wc -l`
echo "FILE_COUNT=${FILE_COUNT}"

qsub -P $PROJECT -N $JOBNAME -pe omp $NCORE_REQ -l mem_total=${MEM_LIMIT} -l h_rt=${RT_LIMIT} -t 1-${FILE_COUNT} trim_Un_chrY_chrM_shift.qsub

