DATE=$(date+%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log


R="\e[31m"
G="\e[32m"
N="\e[0m"


#code to  run with root access

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
  echo "run this script with root access"
  exit 1
else
  echo "Installing with root access" 
fi    

#checking the previous command succes or not with exit status


#FUNCTIONS
#It validate the executed statments success or not

VALIDATE () {
    if [ $1 -ne 0 ]
then 
  echo "$R Installing $2 is failure $N"
  exit 1
else
  echo "$G Installing $2 success $N" 
fi    
}


yum install git -y &>>$LOGFILE

VALIDATE $? "git"

yum install mysqldd


VALIDATE $? "mysql"  &>>$LOGFILE