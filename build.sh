#!/bin/bash

while true
do
    if [ -f ./buildscriptallow.cc ]
    then
        echo "buildscriptallow.cc found, running command"
        . build/envsetup.sh && lunch twrp_a52sxq-eng && mka recoveryimage RECOVERY_VARIANT=philz
        break
    else
        echo "buildscriptallow.cc not found, sleeping for 1 minute"
        sleep 60
    fi
done
