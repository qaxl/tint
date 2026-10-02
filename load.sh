#!/bin/bash

loads=$(uptime)
if [ "$1" = "1" ]; then
       echo $loads | cut -d " " -f 1

elif [ "$1" = "5" ]; then       
        echo $loads | cut -d " " -f 2

elif [ "$1" = "15" ]; then
        echo $loads | cut -d " " -f 3
else
        echo "Sallittavat syötteet ovat 1, 5, 15"       
fi
