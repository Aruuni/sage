#!/bin/bash

if [ $# != 20 ]
then
    echo -e "1[port] 2[Report Period: 10 msec--fixed for now :)] 3[First Time: 1=yes(learn), 0=no(continue learning), 2=evaluate] 4[scheme: pure] 5[path to run.py] 6[actor id=0, 1, ...] 7[downlink] 8[uplink] 9[one-way delay] 10[log_file/comment] 11[duration] 12[loss rate] 13[qsize] 14[num_steps] 15[basetimestamp_fld] 16[bw] 17[bw2] 18[trace_period] 19[save] 20[num_flows]"

    echo "$@"
    echo "$#"
    exit
fi

port=$1
period=$2
first_time=$3
scheme=$4
path=$5
tid=$6
dl=$7
up=${8}
del=${9}
log=${10}
time=${11}
loss=${12}
qs=${13}
time_training_steps=${14}
basetimestamp_fld=${15}
env_bw=${16}
bw2=${17}
trace_period=${18}
save=${19}
num_flows=${20}

#$path/server $port $path $target $initial_alpha ${period} ${first_time} $scheme $tid $dl $up $del $log $time $loss $qs $time_training_steps $basetimestamp_fld $bw2 $trace_period
$path/sage $port $path $save $num_flows $env_bw ${first_time} $scheme $tid $dl $up $del $log $time $loss $qs $time_training_steps $basetimestamp_fld $bw2 $trace_period


