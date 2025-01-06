#!/bin/bash
mountdir=$(pwd)/build
mkdir $mountdir

docker run --mount type=volume,dst=/home/root,volume-driver=local,volume-opt=type=none,volume-opt=o=bind,volume-opt=device=$mountdir -it wungus:gorkus bash 