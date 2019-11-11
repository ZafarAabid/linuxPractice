#!/bin/bash -x

RatePerHour=10
employeehours=0
fulltime=1
parttime=2
total=0

function myfun() {

while [ $employeehours -le 51 ]
do
reminder=$(( $RANDOM % 3 ))

if [ $reminder -eq $fulltime ]
then
hours=8
elif [ $reminder -eq $parttime ]
then
hours=4
else
hours=0
fi
employeehours=$(( $employeehours + $hours ))
done
}


result="$( myfun )"

echo "total emp hours : $result"
printf "\n"

