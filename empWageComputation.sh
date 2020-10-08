#! /bin/bash -x

echo "Welcome to employeeWage Computation"

Is_Full_Time=1

Emp_Rate_Per_Hour=20

a=$( expr $RANDOM % 2 )

	if [ $a -eq $Is_Full_Time ]
	then
		emphrs=8

		Total_Salary=$(( $Emp_Rate_Per_Hour * $emphrs ));

		echo "Daily Wage of Employee is $Total_Salary"

	elif [ $a -eq 0 ]
	then
		echo "employee is absent"

	fi
