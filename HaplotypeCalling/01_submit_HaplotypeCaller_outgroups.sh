#!/bin/bash

sbatch /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/whole-genome-reseq/HaplotypeCalling/01_run_HaplotypeCaller_OutgroupIntervalList.sbatch PinEnu
sleep 1
sbatch /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/whole-genome-reseq/HaplotypeCalling/01_run_HaplotypeCaller_OutgroupIntervalList.sbatch UraSib
sleep 1
sbatch /n/holylfs/LABS/edwards_lab/ashultz/HFWGReseq/whole-genome-reseq/HaplotypeCalling/01_run_HaplotypeCaller_OutgroupIntervalList.sbatch CarEry