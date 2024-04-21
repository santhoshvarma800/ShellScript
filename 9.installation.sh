#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
   then
       echo " You need to have root access to run the script "
    else
        echo " you are a Super User "
fi
dnf install hhdbf -y

dnf install git -y