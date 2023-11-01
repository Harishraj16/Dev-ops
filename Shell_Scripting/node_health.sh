#!/bin/bash

#############################
# Author: Harish
# Date: 31/10/2023
#
# This script outputs the node health
#
# version: v1
#############################

set -x #Debug mode
set -e #exit the script when there is an error
set -o pipefail

#echo "Print the disc space"
df -h

#echo "Print the memory"
free -g

#echo "Print the cpu"
nproc

ps -ef | grep 

