#!/bin/bash

#SBATCH -p general
#SBATCH -n 2
#SBATCH -N 1
#SBATCH --mem 8000
#SBATCH -t 3-00:00
#SBATCH -J gvcf
#SBATCH -o ./logs/gvcf_%A_%a.out
#SBATCH -e ./logs/gvcf_%A_%a.err
#SBATCH --constraint=holyib
#SBATCH --array=1-10

module load java/1.8.0_45-fasrc01

SAMPLE=$1



if [ ! -f interval_list_${SLURM_ARRAY_TASK_ID}/${SAMPLE}_${SLURM_ARRAY_TASK_ID}.raw.g.vcf.idx ]
then

java -XX:ParallelGCThreads=1 -Xmx4g -jar ~/sw/bin/GenomeAnalysisTK.jar \
-T HaplotypeCaller \
-R ../genome/final.assembly.homo.fa \
-minPruning 1 \
-minDanglingBranchLength 1 \
-I ../indelrealign/merged_realigned_bams/${SAMPLE}_realigned.sorted.bam \
--emitRefConfidence GVCF \
-o interval_list_${SLURM_ARRAY_TASK_ID}/${SAMPLE}_${SLURM_ARRAY_TASK_ID}.raw.g.vcf \
-L split_fai_10/final.assembly.homo.fa_${SLURM_ARRAY_TASK_ID}.interval_list

fi

