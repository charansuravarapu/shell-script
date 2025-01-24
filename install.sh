#!bin/bang

userid=$(id -u)
 
 if [ $userid -ne 0 ]
 then 
    echo "Error: you must have sudo access to execute this script"
fi

dnf list installed mysql

if [ $? -ne 0 ]
then 
    dnf install mysql -y
    if [ $? -ne 0 ]
    then 
        echo "Installing MyQSL...failures"
        exit 1
    else 
        echo "Installling MYSQL..success"
    fi 
else 
    echo "Mysql is already..Installed"
fi