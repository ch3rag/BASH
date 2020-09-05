# Program To Check Whether A Year Is A Leap Year

printf "Enter Year: "
read year
if [ `expr $year % 4` -eq 0 ]
then
	echo "Leap Year"
else
	echo "Not A Leap  Year"
fi

