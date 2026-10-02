#!/bin/bash

cat random_dataset_with_errors.csv | grep error | cut -d "," -f 4 | sort -n | uniq | wc -l > tiedosto.txt
