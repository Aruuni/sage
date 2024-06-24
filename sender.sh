#!/bin/bash
port=$1
path=/home/$(whoami)/sage/sage_rl/rl_module
id=$2
finish_time=$3
scheme="pure"
max_it=0

$path/sage-server-mahimahi $port $path $id $finish_time $scheme

echo "Finished."

