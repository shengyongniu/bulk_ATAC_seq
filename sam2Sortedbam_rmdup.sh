#!/bin/bash


PROJECT=chengcancer
echo "PROJECT=${PROJECT}"
#JOBNAME=`(basename $0) |  sed -e 's/\.[^.]*$//'` #tophat_mapping_y
JOBNAME='tosortedbam_batch5'
echo "JOBNAME=${JOBNAME}"
NCORE_REQ=1 #based on Charlie's benmark, the increased number of cores above 4 didn't play much in performance gain for tophat,user can experiment this more to set the best value
echo "NCORE_REQ=${NCORE_REQ}"
RT_LIMIT="48:00:00"
MEM_LIMIT="125G" # it seems each job do not consume 10G to my observation; so set 125G shall be safe, even after increase the cores.

FILE_COUNT=`find /restricted/projectnb/chengcancer/Simon/project/T2D/ATAC-seq/NextSeq/2mapping/*.sam | wc -l`
echo "FILE_COUNT=${FILE_COUNT}"

qsub -P $PROJECT -N $JOBNAME -pe omp $NCORE_REQ -l mem_total=${MEM_LIMIT} -l h_rt=${RT_LIMIT} -t 1-${FILE_COUNT} sam2Sortedbam_rmdup.qsub
