#!/bin/bash
port=$1
path=/home/$(whoami)/sage/sage_rl
id=$2
finish_time=$3
max_it=0

$path/sage-server-mahimahi $port $path $id $finish_time 

echo "Finished."

