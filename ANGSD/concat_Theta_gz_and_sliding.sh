#!/bin/bash

SAMPLE=$1
DIRECTORY=$2

COUNT=0

#Check if all files are present
for i in {1..20}

do

if [ -f ${DIRECTORY}/${SAMPLE}_Int$i.thetas.gz ]
then
COUNT=$(($COUNT+1))

else
echo ${SAMPLE}_$i missing file
fi

done


#If all files present copy first file to a new file to hold concatenated results and gunzip
if [ "$COUNT" -eq "20" ]

then	
	
	#zcat ${DIRECTORY}/${SAMPLE}_Int1.thetas.gz > ${DIRECTORY}/${SAMPLE}_cat.thetas
	cp ${DIRECTORY}/${SAMPLE}_Int1_1kbWin_1kbStep.pestPG > ${DIRECTORY}/${SAMPLE}_cat_1kbWin_1kbStep.pestPG
	
	for i in {1..20}
		do	
		cat ${DIRECTORY}/${SAMPLE}_Int${i}_1kbWin_1kbStep.pestPG | tail -n +2 >> ${DIRECTORY}/${SAMPLE}_cat_1kbWin_1kbStep.pestPG	
		#zcat ${DIRECTORY}/${SAMPLE}_Int${i}.thetas.gz | tail -n +2 >> ${DIRECTORY}/${SAMPLE}_cat.thetas.gz
		done

else
	echo Something is wrong
fi