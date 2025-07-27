#!/bin/bash

#SBATCH -p batch
#SBATCH -t 1:00:00
#SBATCH --nodes=1
#SBATCH --job-name="hmmer"
#SBATCH --ntasks-per-node=32
#SBATCH --mail-user=your_email@gmail.com
#SBATCH --mail-type=begin,end

echo "hmmsearch started at `date`"

module load hmmer

hmmsearch --cpu 32 --tblout search_results.tbl --domtblout domain_results.domtbl --noali PF00012.hmm osa1_r7.gene_models.pep.fa > full_output.txt

#for all options: hmmer -h

echo "hmmsearch finished at `date`"
