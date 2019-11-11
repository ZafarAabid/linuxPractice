#! /bin/bash -x

flag=true;
counter=0;
ratePerHr=100;
isPartTime=1;
isFullTime=2;
sum=0;
maxHr=50;
workingHr=0;

function validTime() {
	getValue=$1
	workingHr= $( $workingHr + $getValue )
	if [ workingHr <= 50 ]
	then
		flag=true;
	fi

	if [ workingHr > 50]
	then
		flag=false;
	fi
	echo $workingHr
}


for(( day=1; day<=20; day++))
do
	if [ $flag ]
	then
		randomCheck=$(( RANDOM % 3))
		case $randomCheck in
		$isFullTime)
			workedToday=6 ;;
		$isPartTime)
			workedToday=3
		;;
		*)
			workedToday=0
		;;
		esac
	workingHr="$( validTime $(( workedToday )) )"
	
	wage=$(( $ratePerHr * $workingHr ))
	sum=$(( $sum + $wage ))
	wageArray[((counter++))]=$sum
	fi
	done
echo ${wageArray[@]}
