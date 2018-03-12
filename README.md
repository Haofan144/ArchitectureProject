# ArchitectureProject
Final project for Computer Architecture 
#This project measures the performance of a genetic algorithm based on Deap framework.
#Scripts setup.sh and run.sh are created to run the measurement
#setup.sh creates a docker and pulls from my github https://github.com/Haofan144/ArchitectureProject.git 
Usage:
chmod 777 ./setup.sh
./setup.sh 

#run.sh has two input parameters and runs the tests for throughput and latency
Usage:
chmod 777 ./run.sh
./run.sh para1 para2 
#para1 is the population size for the genetic algorithm, by changing the population size the instructions size can be changed from ~X to ~X/4, ~X/16, ...~X/64
#para2 is the thread number, which can be chosen from 1/2/4/8
