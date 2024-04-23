#!/bin/bash

USERID=$(id -u)


validate(){
    if [ $1 -ne 0 ]
    then 
        echo "$2 is failing"
    else
        echo "$2 is succcess"
    fi    
}




if [ $USERID -ne 0 ]
then 
    echo "please run with root"
    exit 1
else 
    echo "you are super user"
fi

dnf install mysql -y 
validate $? "installing mysql"

dnf install git -y 
validate $? "installing git"

