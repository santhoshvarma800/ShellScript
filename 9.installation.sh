#!/bin/bash

USERID=$(id -u) # we will check user is a super user or normal user.

if [ $USERID -ne 0 ]
  then
      echo " You need to have root access to run the scipt "
      exit 1
   else
      echo " You are a Super User "
fi

dnf install mysql -y

#Here for the above command we will check the exit status, if it is executed, we procced or else we will exit

if [ $? -ne 0 ]
  then
    echo " The MYSQL Installation is FAILURE... "
    exit 1
  else
     echo " The MYSQL Installation is SUCCESS! "
fi


dnf install git -y 

#After every command we need to do the validations, whether it got executed or not

if [ $? -ne 0 ]
  then
    echo " The GIT Installation is FAILURE... "
    exit 1
  else
     echo " The GIT Installation is SUCCESS! "
fi

