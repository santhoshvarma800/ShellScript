#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIP_TNAME-$TIMESTAMP.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

VALIDATE ()
{
    if [ $? -ne 0 ]
  then
    echo -e " $1 is $R FAILURE... $N"
    exit 1
  else
     echo -e " $1 is $G SUCCESS! $N "
fi

}

if [ $USERID -ne 0 ]
  then
      echo " You need to have root access to run the scipt "
      exit 1
   else
      echo -e " You are a $B Super User $N "
fi


dnf install mysqll -y &>>$LOGFILE

VALIDATE " Installing MYSQL "  # we can pass the input values to the functions


dnf install git -y &>>$LOGFILE

VALIDATE " Installing GIT "

