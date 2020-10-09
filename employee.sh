#!/bin/bash -x
ispresent=1
randomcheck=$((RANDOM%2))
if [ $randomcheck -eq $ispresent ]
then
 empRatePerhr=20;
emphrs=8
salary=$((emphrs*$empRatePerhr))
echo $salary
else
  salary=0
echo $salary
fi

