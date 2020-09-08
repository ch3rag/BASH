# Program To Check Whether A Number Is Even Or Odd

printf "Enter A Number: "
read number
if [ `expr $number % 2` -eq 0 ]
then
	echo "Even Number"
else
	echo "Odd Number"
fi
---
