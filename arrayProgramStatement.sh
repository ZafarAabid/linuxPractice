#! /bin/bash -x

counter=0;
ratePerHr=100;
isPartTime=1;
isFullTime=2;
sum=0;

function myfunc() { 
echo ""
}
for(( day=1; day<=20; day++))
do
	randomCheck=$(( RANDOM % 3))
	case $randomCheck in
	$isFullTime)
		workingHr=6 ;;
	$isPartTime)
		workingHr=3
	;;
	*)
		workingHr=0
	;;
	esac
	
	wage=$(( $ratePerHr * $workingHr ))
	sum=$(( $sum + $wage ))
	wageArray[((counter++))]=$sum
done
echo ${wageArray[@]}
