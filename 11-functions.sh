#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log




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

dnf install mysql -y &>>$LOGFILE
validate $? "installing mysql"

dnf install git -y &>>$LOGFILE  
validate $? "installing git"

