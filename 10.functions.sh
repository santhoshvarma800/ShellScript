#!/bin/bash

USERID=$(id -u)

VALIDATE ()
{
    if [ $? -ne 0 ]
  then
    echo " $1 is FAILURE... "
    exit 1
  else
     echo " $1 is SUCCESS! "
fi

}

if [ $USERID -ne 0 ]
  then
      echo " You need to have root access to run the scipt "
      exit 1
   else
      echo " You are a Super User "
fi

dnf install mysql -y

VALIDATE "Installing MYSQL"  # we can pass the input values to the functions

dnf install git -y

VALIDATE "Installing MYSQL"


