#!/bin/bash

isPresent=1
present=$(( RANDOM % 2))

if [ $isPresent -eq $present ]
then
	echo Person is present
else
	echo person is absent
done


