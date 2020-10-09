#!/bin/bash -x
IS_FULL_TIME=1
IS_PART_TIME=2
totalsalary=0
empRatePerhr=20
numworkingdays=20
for (( i=1; i<=$numworkingdays; i++ ))
do
        empcheck=$((RANDOM%3))
     case $empcheck in

                $IS_FULL_TIME )
                        empHrs=8
                        ;;
                $IS_PART_TIME )
                        empHrs=4
                        ;;
                * )
                        empHrs=0
                        ;;
        esac
done

        salary=$(($empHrs*$empRatePerhr))
        totalsalary=$(($totalsalary+$salary))

echo "Employee wages for month: " $totalsalary
