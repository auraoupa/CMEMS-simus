#!/bin/bash
#SBATCH -J mkmap
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --ntasks-per-node=24
#SBATCH --time=24:00:00
#SBATCH -e mkmap.e%j
#SBATCH -o mkmap.o%j
#SBATCH --exclusiv
#SBATCH --constraint=HSW24

set -vx

ulimit -s unlimited

cd /scratch/cnt0024/hmg2840/albert7a/GLORYS2V4/interp

./sosie.x -f namelist_iicethic
