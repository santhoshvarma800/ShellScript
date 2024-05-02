#!/bin/bash

COURSE="DevOps from Current Script"
echo "Before calling other script, course: $COURSE"
echo "Process ID of current shell script: $$"
osurce ./16.otherscript.sh
echo "After calling other script, course: $COURSE
