#!/bin/bash -l


for filename in ./*.trimmed.shifted.bed
do
awk '{if ($2 > 0) print  $1 "\t" $2 "\t" $3 "\t" $4 "\t" $5 "\t" $6 }' "$filename" >  $(basename "$filename" bed)nonnegative.bed

done
