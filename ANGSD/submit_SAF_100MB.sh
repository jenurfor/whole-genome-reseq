#!/bin/bash

#samples bamlistdir sitesfile anc

sbatch /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/whole-genome-reseq/ANGSD/run_SAF_100MB.sbatch Eastern_90 /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/whole-genome-reseq/BamLists_NoRel /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/genome/bedfiles/genome_subset_100MB_shuffled_sorted.angsdsites /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/gatk/anc_fasta/HF_ancestral_alleles.fasta
sleep 1
sbatch /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/whole-genome-reseq/ANGSD/run_SAF_100MB.sbatch Eastern_01 /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/whole-genome-reseq/BamLists_NoRel /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/genome/bedfiles/genome_subset_100MB_shuffled_sorted.angsdsites /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/gatk/anc_fasta/HF_ancestral_alleles.fasta
sleep 1
sbatch /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/whole-genome-reseq/ANGSD/run_SAF_100MB.sbatch Eastern_14 /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/whole-genome-reseq/BamLists_NoRel /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/genome/bedfiles/genome_subset_100MB_shuffled_sorted.angsdsites /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/gatk/anc_fasta/HF_ancestral_alleles.fasta
sleep 1
sbatch /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/whole-genome-reseq/ANGSD/run_SAF_100MB.sbatch Western_01 /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/whole-genome-reseq/BamLists_NoRel /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/genome/bedfiles/genome_subset_100MB_shuffled_sorted.angsdsites /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/gatk/anc_fasta/HF_ancestral_alleles.fasta
sleep 1
sbatch /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/whole-genome-reseq/ANGSD/run_SAF_100MB.sbatch Western_14 /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/whole-genome-reseq/BamLists_NoRel /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/genome/bedfiles/genome_subset_100MB_shuffled_sorted.angsdsites /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/gatk/anc_fasta/HF_ancestral_alleles.fasta
sleep 1
sbatch /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/whole-genome-reseq/ANGSD/run_SAF_100MB.sbatch CC /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/whole-genome-reseq/BamLists_NoRel /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/genome/bedfiles/genome_subset_100MB_shuffled_sorted.angsdsites /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/gatk/anc_fasta/HF_ancestral_alleles.fasta
sleep 1
sbatch /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/whole-genome-reseq/ANGSD/run_SAF_100MB.sbatch CP /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/whole-genome-reseq/BamLists_NoRel /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/genome/bedfiles/genome_subset_100MB_shuffled_sorted.angsdsites /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/gatk/anc_fasta/HF_ancestral_alleles.fasta
sleep 1
