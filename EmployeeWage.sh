#! /bin/bash 
totalNoOfDays=20
totalHours=0
perDayWage=[]
ratePerHour=18
declare -A wagePerDay
function calculations()
	{
		isFullTime=1
		isPartTime=2
		empCheck=$((RANDOM%3))
		case $empCheck in
			$isFullTime)
			hours=8;;
			$isPartTime)
			hours=4;;
			*)
			hours=0;;
		esac
		echo $hours
	}


function dailyWage()
{
	wage=$(($ratePerHour*$1))
	echo $wage
}

function inDictionary()
{
	wagePerDay[$1]=$2
}


for (( day=0; day<=$totalNoOfDays; day++ ))
do
	calchrs=" $( calculations ) "
	DayWage="$( dailyWage $calchrs )" 
	perDayWage[((counter++))]=$DayWage
	inDictionary $day $DayWage
	totalHours=$(($totalHours+$calchrs))
done

	totalSalary=$(($ratePerHour*$totalHours))
	wagePerDay[TotalSalary]=$totalSalary
	# echo ${perDayWage[@]} #printing using array
	echo Dictionary ${wagePerDay[@]} #printing using dictionary

for (( count=0; count < ${#perDayWage[@]}; count++ ))
do
	echo  "payment of day " $count "is" ${perDayWage[count]}

done
echo " Final Payment is " $totalSalary
