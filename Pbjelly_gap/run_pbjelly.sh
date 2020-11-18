#! /bin/bash

source /mnt/md0/PBSuite_15.8.24/setup.sh

#Jelly extraction /mnt/md0/PBSuite_15.8.24/Pbjelly_analysis/Protocol.xml

Jelly assembly /mnt/md0/PBSuite_15.8.24/Pbjelly_analysis_9thJuly2018/Protocol.xml -x "--nproc=18"

Jelly.py output /mnt/md0/PBSuite_15.8.24/Pbjelly_analysis_9thJuly2018/Protocol.xml
