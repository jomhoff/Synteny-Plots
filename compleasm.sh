#!/bin/sh
#SBATCH --job-name compleasm
#SBATCH --nodes=1
#SBATCH --tasks-per-node=8
#SBATCH --mem=50gb
#SBATCH --time=5:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=jhoffman1@amnh.org

source ~/.bash_profile
conda activate compleasm

GENOME="/path/to/genome.fasta"
OUT="/path/to/outdirectory"
LINEAGE="busco_lineage" #i.e. sauropsida

echo $GENOME

compleasm run -a $GENOME -o $OUT -t $SLURM_NTASKS_PER_NODE -l $LINEAGE
done
