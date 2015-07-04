#/bin/bash

#grab output files
merged_reads=$1
shift
not_combined_1=$1
shift
not_combined_2=$1
shift
inter_not_combined=$1
shift
reads_and_pairs=$1
shift
log_file=$1
shift

flash $@ > $log_file
sleep 5 #sleep because phil says so

if [ -f out.notCombined_2.fastq ];
then
    mv out.notCombined_2.fastq $not_combined_2
fi
if [ -f out.notCombined_1.fastq ];
then
    mv out.notCombined_1.fastq $not_combined_1
fi
if [ -f out.notCombined.fastq ];
then
    mv out.notCombined.fastq $inter_not_combined
fi
if [ -f out.readsAndPairs.tab ];
then
    mv out.readsAndPairs.tab $reads_and_pairs
fi
if [ -f out.extendedFrags.fastq ];
then
    mv out.extendedFrags.fastq $merged_reads
fi

exit 0
