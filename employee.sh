#!/bin/bash -x

IS_FULL_TIME=1
IS_PART_TIME=2
EMP_RATE_PER_HOUR=20
NUM_OF_WORKING_DAYS=20
MAX_HPURS_IN_MONTHS=40

totalEmpHours=0
totalWorkingDays=0

declare -A dailyWages

function getWorkingHours(){
        case $1 in
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
        echo $empHrs
}

function getEmpWage(){
        oneDayHrs=$1
        echo $(($oneDayHrs*$EMP_RATE_PER_HOUR))
}
while [[ $totalEmpHours -lt $MAX_HPURS_IN_MONTHS && $totalWorkingDays -lt $NUM_OF_WORKING_DAYS ]]
do
        ((totalWorkingDays++))
        empHours=$( getWorkingHours $((RANDOM%3)) )
        totalEmpHours=$(($totalEmpHours+$empHours))
        dailyWages[$totalWorkingDays]=$( getEmpWage $empHours )
done
        totalSalary=$(($EMP_RATE_PER_HOUR*$totalEmpHours))
        echo "total salary is : $totalSalary"
        echo "Daily wages : ${dailyWages[@]}"
        echo "Daily index : ${!dailyWages[@]}"


