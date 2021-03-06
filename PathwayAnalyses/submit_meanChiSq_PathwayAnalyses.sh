#!/bin/bash

sbatch /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/whole-genome-reseq/PathwayAnalyses/run_PathwayAnalyses.sbatch results_pathway/Eastern_9001_genes_mean.bed Eastern_9001_meanChiSq_genes results_pathway
sleep 1
sbatch /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/whole-genome-reseq/PathwayAnalyses/run_PathwayAnalyses.sbatch results_pathway/Eastern_9014_genes_mean.bed Eastern_9014_meanChiSq_genes results_pathway
sleep 1
sbatch /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/whole-genome-reseq/PathwayAnalyses/run_PathwayAnalyses.sbatch results_pathway/Eastern_0114_genes_mean.bed Eastern_0114_meanChiSq_genes results_pathway
sleep 1
sbatch /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/whole-genome-reseq/PathwayAnalyses/run_PathwayAnalyses.sbatch results_pathway/Western_0114_genes_mean.bed Western_0114_meanChiSq_genes results_pathway
sleep 1
sbatch /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/whole-genome-reseq/PathwayAnalyses/run_PathwayAnalyses.sbatch results_pathway/Eastern_90_Western_01_genes_mean.bed Eastern_90_Western_01_meanChiSq_genes results_pathway
sleep 1
sbatch /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/whole-genome-reseq/PathwayAnalyses/run_PathwayAnalyses.sbatch results_pathway/Eastern_14_Western_14_genes_mean.bed Eastern_14_Western_14_meanChiSq_genes results_pathway
sleep 1