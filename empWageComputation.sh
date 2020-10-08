#! /bin/bash -x

echo "Welcome to employeeWage Computation"

Is_Full_Time=2
Is_Part_Time=1
Total_Salary=0
Emp_Rate_Per_Hour=20
Num_Working_Days=20

for (( day=1; day<=$Num_Working_Days; day++ ))
do
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

		Salary=$(( $Emp_Rate_Per_Hour * $emphrs ))

		Total_Salary=$(( $Salary + $Total_Salary ))
done

	echo "Daily Wage of Employee is $Total_Salary"

