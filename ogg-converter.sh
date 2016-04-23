#!/bin/bash
# Copyright (c) 2016 Nicolás A. Ortega
# License: GNU GPLv3

for f in $@
do
    OUTFILE=${f:0:-4}
    echo "Convert $f to $OUTFILE.ogg"
    while true
    do
        read -p "Do you wish to continue? (y/n) " ANSWER
        case $ANSWER in
            [yY]* ) ffmpeg -loglevel warning -i $f $OUTFILE.ogg
                    break;;

            [nN]* ) echo "Skipped file $f"
                    break;;

            * )     echo "Please enter a valid option."
        esac
    done
done
