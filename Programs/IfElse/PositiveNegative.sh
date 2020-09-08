# Program To Checl Whether A Number A Number Is Positive, Negative Or Zero

printf "Enter A Number: "
read number

if [ $number -gt 0 ]
then
	echo "Positive Number"
elif [ $number -lt 0 ]
then
	echo "Negative Number"
else
	echo "Zero"
fi
