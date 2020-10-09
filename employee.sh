#!/bin/bash -x
ispresent=1
randomcheck=$((RANDOM%2))
if [ $randomcheck -eq $ispresent ]
then
 echo "Employee is present"
else
 echo "absent"

fi


