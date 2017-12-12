# variables for running snakemake from a variable
rule ?= all		# run rule all by default, which is the default behavior anyway
restart ?= 0	# by default do not restart failed jobs

dry:
	snakemake -p -n
srun:
	module load R/3.3.2
	srun -t 7-0 snakemake --restart-times $(restart) -j 500 -p --max-jobs-per-second 1 --cluster-config cluster.json --cluster "sbatch  -p {cluster.partition} --cpus-per-task {cluster.cpus-per-task} -t {cluster.time} --mem {cluster.mem}" --rerun-incomplete --notemp --nolock $(rule) 
rmout: 
	rm -f *.out
