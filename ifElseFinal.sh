#!/bin/bash

isPresent=2
present=$(( RANDOM % 3))

if [ $isPresent < $present ]
then
	echo Person is absent
elif [ $isPresent -eq $present ]
	echo person is absent
else 
	echo Person is flee
done


