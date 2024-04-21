#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
   then
       echo " You need to have root access to run the script "
    else
        echo " you are a Super User "
fi

dnf install hhdbf -y

if [ $? -ne 0 ]
  then 
     
     echo " Installation is FAILURE... "
      exit 1
  else
     echo " Installation is SUCCESS! "
fi

dnf install git -y