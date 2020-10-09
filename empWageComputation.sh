#! /bin/bash -x

echo "Welcome to employeeWage Computation"

Is_Full_Time=2
Is_Part_Time=1
Total_Salary=0
Emp_Rate_Per_Hour=20
Num_Working_Days=20
Max_Month_Hrs=100
Total_Emp_Hrs=0

totalworkingdays=0

function getworkinghour
{
		local emphrs=0;


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
echo $emphrs
}
while [[ $Total_Emp_Hrs -lt $Max_Month_Hrs && $totalworkingdays -lt $Num_Working_Days ]]
do
		((TotalWorkingDays++))
      empcheck=$( expr $RANDOM % 3 )

		emphrs=$( getworkinghour $empcheck )

		Salary=$(( $Emp_Rate_Per_Hour * $emphrs ))

		Total_Salary=$(( $Salary + $Total_Salary ))

		Total_Emp_Hrs=$(( $Total_Emp_Hrs + $emphrs ))

	echo " Day $TotalWorkingDays ==>  "
	echo "Daily wage of employee is $Salary"
done

	echo "Total Wage of Employee is $Total_Salary"


