#!/bin/bash

VAR=$1
NAME=$2
#echo "$VAR"

if [ $NAME == $VAR ]
then
 echo "GOOD"
else 
 echo "BAD"
fi

DATE=$(date)

echo "Today date is $DATE"

SUM=$1 + $2
echo "$SUM"

#for i in 
