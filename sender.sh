#!/bin/bash
port=$1
id=$2
finish_time=$3
scheme="pure"
max_it=0
path=$4
path="$path/sage_rl/rl_module"
$path/sage-server-mahimahi $port $path $id $finish_time $scheme

echo "Finished."

