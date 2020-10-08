#! /bin/bash -x

echo "Welcome to employeeWage Computation"

a=$( expr $RANDOM / 10 )
b=$( expr $a % 2 )

	if [ $b -eq 1 ]
	then
		echo "employee is present"
	elif [ $b -eq 0 ]
	then
		echo "employee is absent"
	fi
