#!/bin/bash

#PBS -N trimprogexp
#PBS -q standby 
#PBS -l nodes=1:ppn=4 
#PBS -l walltime=04:00:00 

module use /apps/group/bioinformatics/modules
module load trimmomatic 
module load java 

cd $PBS_O_WORKDIR

trimmomatic PE -phred33 \
Monpu1.genome.rawReads.r1.fq \
Monpu1.genome.rawReads.r2.fq \
trimm.pairedout.r1.fq \
trimm.unpairedout.r1.fq \
trimm.pairedout.r2.fq \
trimm.unpairedout.r2.fq \
ILLUMINACLIP:illumina.fa:2:30:10 \ 
LEADING:15 \
TRAILING:15 \
SLIDINGWINDOW:3:20 \
MINLEN:50 &> trimm_logfile.txt
