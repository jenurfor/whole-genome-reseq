#!/bin/bash

#SBATCH -p general
#SBATCH -n 8
#SBATCH -N 1
#SBATCH --mem 36000
#SBATCH -t 0-5:00:00
#SBATCH -J angsd_saf
#SBATCH -o logs/angsd_saf_%A_%a.out
#SBATCH -e logs/angsd_saf_%A_%a.err
#SBATCH --constraint=holyib
#SBATCH --array=1-20

module load angsd/0.911-fasrc01

REF=../genome/final.assembly.homo.fa

SAMPLES=$1
BAMLISTDIR=$2
SITES=$3
ANC=$4


#Filters are only keep unique hits, remove "bad" reads, no trimming, (didn't use filter for reads where mates could be mapped), only keep reads with a minimum mapping quality of 20 only keep sites where there are data for at least half of the individuals. Minimum base quality of 20

#angsd -bam ${BAMLISTDIR}/${SAMPLES}_BamList.txt -anc ${ANC} -uniqueOnly 1 -remove_bads 1 -trim 0 -minMapQ 20 -minQ 20 -sites ${SITES} -only_proper_pairs 0 -nThreads 8 -out results_saf/${SAMPLES}_Int${SLURM_ARRAY_TASK_ID} -doSaf 1 -GL 1 -skipTriallelic 1 -rf split_fai_20_angsd/final.assembly.homo.fa_${SLURM_ARRAY_TASK_ID}.interval_list

realSFS results_saf/${SAMPLES}_Int${SLURM_ARRAY_TASK_ID}.saf.idx -P 8 -sites ${SITES} > results_saf/${SAMPLES}_Int${SLURM_ARRAY_TASK_ID}.sfs