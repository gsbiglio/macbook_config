#!/bin/bash

# create a csv dir
if [ ! -d ~/Downloads/csv ]
then
    mkdir ~/Downloads/csv
fi

#only move .csv files
for file in ~/Downloads/*
do
    if [ -f $file ]
    then
        ext=${file##*.}
        if [ "$ext" == "csv" ]
        then
            mv $file ~/Downloads/csv
        fi
    fi
done
