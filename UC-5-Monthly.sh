#!/bin/bash -x

isPartTime=1
isFullTime=2
numofWorkingDays=20
empRatePerHr=20

totalsalary=0
for (( day=1; day<=$numofWorkingDays; day++ ))
do
       randomCheck=$((RANDOM%3))
        case $randomCheck in
                           $isPartTime )
                                    empHrs=4
                            ;;
                           $isFullTime )
                                    empHrs=8
                            ;;
                            *)
                                    empHrs=0
                        ;;  
         esac
       salary=$(($empHrs*$empRatePerHr)) #dailywage
       totalsalary=$(($totalsalary+$salary)) #totalwage
done

