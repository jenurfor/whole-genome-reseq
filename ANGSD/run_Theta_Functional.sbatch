#!/bin/bash

#SBATCH -p general
#SBATCH -n 12
#SBATCH -N 1
#SBATCH --mem 56000
#SBATCH -t 1-8:00:00
#SBATCH -J angsd_theta
#SBATCH -o logs/angsd_theta_%j.out
#SBATCH -e logs/angsd_theta_%j.err
#SBATCH --constraint=holyib

module load angsd/0.911-fasrc01

REF=../genome/final.assembly.homo.fa

SAMPLES=$1
BAMLISTDIR=$2
SITES=$3
ANC=$4
FUNCTION=$5

#Filters are only keep unique hits, remove "bad" reads, no trimming, (didn't use filter for reads where mates could be mapped), only keep reads with a minimum mapping quality of 20 only keep sites where there are data for at least half of the individuals. Minimum base quality of 20

#Calculate theta for each site

angsd -bam ${BAMLISTDIR}/${SAMPLES}_BamList.txt -ref $REF -anc ${ANC} -uniqueOnly 1 -remove_bads 1 -trim 0 -minMapQ 20 -minQ 20 -sites ${SITES} -only_proper_pairs 0 -nThreads 12 -out results_theta_functional/${SAMPLES}_${FUNCTION} -doCounts 1 -doMaf 1 -doMajorMinor 1 -GL 1 -doThetas 1 -doSaf 1 -pest results_saf/${SAMPLES}_Genome.sfs

N_CHR=$(zcat results_theta_functional/${SAMPLES}_${FUNCTION}.thetas.gz | tail -n+2 | cut -s -f 1 | uniq | wc -l)
echo $N_CHR

#3) Estimate Tajima's D and other statistics for each site
thetaStat make_bed results_theta_functional/${SAMPLES}_${FUNCTION}.thetas.gz
thetaStat do_stat results_theta_functional/${SAMPLES}_${FUNCTION}.thetas.gz -win 1000 -step 1000 -nChr ${N_CHR} -outnames results_theta_functional/${SAMPLES}_${FUNCTION}_1kbWin_1kbStep
thetaStat do_stat results_theta_functional/${SAMPLES}_${FUNCTION}.thetas.gz -win 2500 -step 500 -nChr ${N_CHR} -outnames results_theta_functional/${SAMPLES}_${FUNCTION}_2.5kbWin_.5kbStep
