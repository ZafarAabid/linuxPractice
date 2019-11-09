#!/bin/bash

isPresent=2
present=$(( RANDOM % 3))

if [ $isPresent < $present ]
then
<<<<<<< HEAD

	echo Person is absent
=======
	echo Person is absent ???
>>>>>>> master
elif [ $isPresent -eq $present ]
	echo person is present.....
else 
<<<<<<< HEAD
	echo Person is fled
=======
	echo Person is flee !!!!
>>>>>>> master
done


