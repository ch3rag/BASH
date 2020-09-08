# Program To Sum Of Digits Of A Number

read -p "Enter A Number: " number
sum=0

while [ $number -gt 0 ]
do
	digit=$(($number % 10))
	sum=$(($sum + $digit))
	number=$(($number / 10))
done

printf "Sum Of Digits: %d\n" $sum
