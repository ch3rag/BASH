# Program To Check Whether A Number Is Armstrong Or Not

read -p "Enter A Number: " number
temp=$number
sum=0

while [ $number -gt 0 ]
do
	digit=$(($number % 10))
	number=$(($number / 10))
	sum=$(($sum + $digit * $digit * $digit))
done

if [ $sum -eq $temp ]
then 
	echo "Armstrong Number"
else
	echo "Not An Armstrong Number"
fi
