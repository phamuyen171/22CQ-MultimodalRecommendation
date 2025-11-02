#!/bin/bash
#SBATCH --job-name=lgmrec_job
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --cpus-per-task=4
#SBATCH --gres=gpu:4
#SBATCH --time=02:00:00
#SBATCH --output=slurm-%j.out  # Nên dùng %j để tên file output là JobID

# python preprocessing/dualgnn-gen-u-u-matrix.py -d baby
# python main.py -m LGMRec -d baby -g 0

# python preprocessing/dualgnn-gen-u-u-matrix.py -d sports
python main.py -m LGMRec -d sports -g 0


# python preprocessing/dualgnn-gen-u-u-matrix.py -d clothing
# python main.py -m LGMRec -d clothing -g 0
