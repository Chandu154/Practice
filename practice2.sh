
yum install git -y 

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
  echo "run this script with root access"
  exit 1
else
  echo "Installing with root access" 
fi    

if [ $? -ne 0 ]
then 
  echo "Installing git is failure"
  exit 1
else
  echo "Installing git success" 
fi    

