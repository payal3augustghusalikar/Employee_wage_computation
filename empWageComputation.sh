#! /bin/bash -x

echo "Welcome to employeeWage Computation"

Is_Full_Time=2
Is_Part_Time=1
Emp_Rate_Per_Hour=20

empcheck=$( expr $RANDOM % 3 )

case $empcheck in

	$Is_Full_Time)
		emphrs=8
			;;

	$Is_Part_Time)
		emphrs=4
			;;

		*)
		emphrs=0
esac

		Total_Salary=$(( $Emp_Rate_Per_Hour * $emphrs ))

		echo "Daily Wage of Employee is $Total_Salary"

