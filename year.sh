#!/bin/sh
if [ -z "$1" ]; then
    echo "
    USAGE\
\n
    example:
        year "managed to get a girls phone number, things are going great"

        year "managed to get a girls phone number, things are going great" --date 03-01-2014
    
    Valid dates are in the following format: %d-%m-%Y
    "
    exit
fi

MSG="$1"
TODAY=`date +"%m-%d-%Y"`

while [ "$1" != "" ]; do
    case $1 in
        -d | --date)
            shift
            echo "found date"
            TODAY="$1"
            ;;
    esac
    shift
done

EXISTS=$(egrep -e "$TODAY" ~/year.txt | wc -l)
echo $TODAY

if [ "$EXISTS" -eq "1" ];then
    echo "\t\t$MSG" >> ~/year.txt
else
    echo "$TODAY\t$MSG" >> ~/year.txt
fi
