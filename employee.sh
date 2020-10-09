#!/bin/bash -x
isfullTime=1
ispartTime=2
empRatePerHour=20
randomcheck=$((RANDOM%3))
case $randomcheck in
        $isfullTime)
        emphrs=8
        ;;
        $ispartTime)
        emphrs=4
        ;;
        *)
        emphrs=0
        ;;

esac

salary=$((($empRatePerHour*$emphrs)))
echo "yr one day salary is : " $salary
