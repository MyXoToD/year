#!/bin/sh

if [ -z "$1" ]; then
    echo "Please say what happened today"
    exit
fi

TODAY=`date +"%m-%d-%Y"`
EXISTS=$(egrep -e "$TODAY" year.txt | wc -l)

if [ "$EXISTS" -eq "1" ];then
    echo "\t\t$1" >> year.txt
else
    echo "$TODAY\t$1" >> year.txt
fi
