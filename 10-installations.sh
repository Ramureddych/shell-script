#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "please run this script with root"
    exit 1 #this command is to exit manually as error came here
else 
    echo "you are super user"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "installation of mysql...failure"
    exit 1
else 
    echo "installation of mysql is success"
fi

dnf inatall git -y
 if [ $? -ne 0 ]
 then
     echo "installation of git...failure"
    exit 1
 else 
     echo "installation of git.....success"
 fi

 echo "is script proceding"   # shell-script have no end it executes continuosly without checjing success or failure       



