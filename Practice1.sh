#!/bin/bash

VAR=$1
NAME=$2
#echo "$VAR"

#conditions

if [ $NAME == $VAR ]
then
 echo "GOOD"
else 
 echo "BAD"
fi

DATE=$(date)

echo "Today date is $DATE"

SUM=$((VAR +NAME)) 
echo "$SUM"

#for i in 


echo "please enter username"

read -s USERNAME # this is the variable where the value of  one user enterd

echo "user entered is:$USERNAME"

echo "please enter password"

read -s PASSWORD 
 echo "password entered is:$PASSWORD"

#Arry
NUMBERS=(1 2 3 4 5 6)
echo "Printing numbers:${NUMBERS[@]}" 

echo "first one $VAR ,second one $NAME"


v="a"
b="v"

echo " $@ "
echo " $# "
echo "scriptname; $0"

# for loop

for i in {1..100}
do
echo "Number:$1"

done


