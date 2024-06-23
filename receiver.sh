#!/bin/bash
ip=$1
port=$2
flow_id=$3

/home/$(whoami)/sage/sage_rl/clientLog ${ip} ${flow_id} ${port} 1
