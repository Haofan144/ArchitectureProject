#!/bin/bash

#Usage:
#chmod 777 ./setup.sh
#./setup/sh

#get local computer's kernel version 
kernel_version=`uname -r`
echo "The kernel version of this computer is: ${kernel_version}"

#Download Dockerfile and onemax.py from my github https://github.com/Haofan144/ArchitectureProject.git
rm arch_project -fr
mkdir arch_project
cd arch_project
git clone https://github.com/Haofan144/ArchitectureProject.git

#adjust kernel version for docker 
cd ArchitectureProject
sed -i "s/KERNEL_VERSION/${kernel_version}/g" Dockerfile

#build the docker image
sudo docker build -t deapfile .              
