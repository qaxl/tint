#!/bin/zsh

if [ $# -lt 4 ]; then
    echo "Ei tarpeeksi argumentteja. Tämä skripti vaatii jonkin skriptin, joka palauttaa jonkin load average arvon. Käyttöohje: $0 10 2 ./load.sh 1" 1>&2
    exit 1
fi

points=$1
how_often=$2
prog=$3

# Tämä hylkää ensimmäiset kolme argumenttia
shift 3

while true
do
    for i in $(seq 1 $points);
    do
	echo "$(date +%s) $(eval $prog $@)"
    done

    sleep $how_often
done
