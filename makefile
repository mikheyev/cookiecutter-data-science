dry:
	snakemake -p -n

sbatch:
	sbatch snakemake.slurm

rmout: 
	rm -f *.out
