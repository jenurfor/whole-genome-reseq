#!/bin/bash

#SBATCH -p general
#SBATCH -n 12
#SBATCH -N 1
#SBATCH --mem 16000
#SBATCH -t 1-00:00:00
#SBATCH -J angsd
#SBATCH -o angsd_LRT_%j.out
#SBATCH -e angsd_LRT_%j.err
#SBATCH --mail-type=END
#SBATCH --mail-user=allisonjshultz@gmail.com


source new-modules.sh
module load angsd/0.911-fasrc01

REF=../genome/final.assembly.homo.fa

YEAR=$1

#Use SAMtools model for GL calculation, infer major/minor based on HF reference, calculate Likelhood Ratio Tests comparing samples from different time points.

angsd -bam ../../whole-genome-reseq/BAMLists/Au_BAMList_${YEAR}.txt -ref ${REF} -out Au_LRT_${YEAR} -uniqueOnly 1 -remove_bads 1 -trim 0 -minMapQ 20 -minQ 20 -minInd 9 -setMinDepth 30 -setMaxDepth 100 -doMaf 2 -doMajorMinor 4 -GL 1 -nThreads 12 -ybin ../../whole-genome-reseq/Au_PrePostCaseControl.txt -doAsso 1 -SNP_pval 1e-6 -minMaf 0.10

