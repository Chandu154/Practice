
yum install git -y 
yum install nginx
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

if [ $? -ne 0 ]
then 
  echo "Installing git is failure"
  exit 1
else
  echo "Installing git success" 
fi    

#FUNCTIONS

VALIDATE () {
    if [ $1 -ne 0 ]
then 
  echo "Installing $2 is failure"
  exit 1
else
  echo "Installing $2 success" 
fi    
}


yum install git -y 

VALIDATE $? "git"

yum install mysql


VALIDATE $? "mysql"