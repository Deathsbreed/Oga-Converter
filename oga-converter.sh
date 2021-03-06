#!/bin/bash
# Copyright (c) 2016 Nicolás A. Ortega
# License: GNU GPLv3

while true
do
    read -p "Should Oga-Converter confirm each conversion? (y/n) " ANSWER
    case $ANSWER in
        [yY]* ) CONFIRMATION=true
                break;;

        [nN]* ) CONFIRMATION=false
                break;;

        * )     echo "Please enter a valid option."
    esac
done

for f in $@
do
    OUTFILE=${f:0:-4}
    echo "Convert $f to $OUTFILE.oga"
    if $CONFIRMATION
    then
        while true
        do
            read -p "Do you wish to continue? (y/n) " ANSWER
            case $ANSWER in
                [yY]* ) ffmpeg -loglevel warning -i $f $OUTFILE.oga
                        break;;

                [nN]* ) echo "Skipped file $f"
                        break;;

                * )     echo "Please enter a valid option."
            esac
        done
    else
        ffmpeg -loglevel warning -i $f $OUTFILE.oga
    fi
done

while true
do
    read -p "Do you wish to delete the old files? (y/n) " ANSWER
    case $ANSWER in
        [yY]* ) echo "Deleting the old files..."
                for f in $@
                do
                    rm $f
                done
                echo "Done."
                break;;

        [nN]* ) echo "Goodbye!"
                break;;

        * )     echo "Please enter a valid option."
    esac
done
