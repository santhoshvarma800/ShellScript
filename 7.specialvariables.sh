#!/bin/bash

echo " The script name is: $0 "
echo " Present working directory is: $PWD "
echo " User home directory is: $HOME "
echo " The hostname is: $HOSTNAME "
echo " Print the all cmd values: $@ "
echo " Number of values passed: $# "
echo " Process ID of the current shellscript: $$ "
sleep 5 &
echo " Proccess ID of the last bacground command: $! "
echo "Check the exit status of previous command: $? "