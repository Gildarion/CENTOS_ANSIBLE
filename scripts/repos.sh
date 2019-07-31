#!/bin/bash
#Install repository for Elastic stack

#Exit immediately if a command exits with a non-zero status
set -e
#Print commands and their arguments as they are executed
set -x

sudo yum -y install epel-release
