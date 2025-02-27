#!/bin/bash
ip=$1
port=$2
flow_id=$3
path=$4
$path/sage_rl/rl_module/clientLog ${ip} ${flow_id} ${port} 1
