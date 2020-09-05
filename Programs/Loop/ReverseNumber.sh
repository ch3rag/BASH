# Program To Reverse A Number

read -p "Enter A Number: " number
temp=$number
reverse=0

while [ $number -gt 0 ]
do
	digit=$(($number % 10))
	number=$(($number / 10))
	reverse=$(($reverse * 10 + digit))
done

printf "Reverse: %d\n" $reverse
