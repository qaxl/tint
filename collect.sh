#!/bin/zsh

points=$1
how_often=$2
prog=$3


shift 3
while true
do
    for i in $(seq 1 $points);
    do
	echo "$(date +%s) $(eval $prog $@)"
    done

    sleep $how_often
done
