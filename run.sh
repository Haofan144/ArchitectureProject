#!/bin/bash

#Usage:
#chmod 777 ./run.sh
#./run.sh parameter1 parameter2
#  parameter1 is the thread number for multiprocessing stage, choose from 1, 2, 4, 8
#  parameter 2 is the population size (instruction size) for genetic algorithm, choose from 160000, 40000, 10000, 2500, 625(or other integers)

programname=$0

function usage {
    echo "usage : $programname {population number} {thread number}"
    exit 1
}


if [ $# -lt 2 ]; then
    usage
else
sudo docker run --privileged deapfile perf stat -e instructions,cycles,branch-misses,L1-dcache-load-misses,L1-icache-load-misses,LLC-load-misses,LLC-store-misses python /architecture/onemax.py "$1" "$2"
fi 
