
DATE=$(date +%F)

SCRIPT_NAME=$0
LOGSDIR=/home/centos/shellscript-logs
#/home/centos/shellscript-logs-scriptname-date.log
LOGFILE=$LOGSDIR/$0-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"    

USERID=$(id -u)
 
if [ $USERID -ne 0 ]
 then 
    echo -e "$R error:please run this script with root access $N"
      exit 1
  #else
    #echo "Info:you are root access" 
fi    

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
    echo -e "Installing $2 ....$R Failure $N"
    exit 1
    else
    echo -e "Installing $2 ....$G Success $N"
   fi

}

for i in $@
do
yum list install $i
  if [ $? -ne 0 ]
    then 
    echo "lets install the $i"
    yum list install $i -y &>>$LOGFILE
    VALIDATE $? "$i"
    else 
    echo -e "$Y alredy installed $i"
    fi
done


