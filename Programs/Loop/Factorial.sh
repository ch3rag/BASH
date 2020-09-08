# Program To Find Factorial Of A Number

read -p "Enter A Number: " number
factorial=1

for ((i = 1; i <= $number; i++))
do
	factorial=$(($factorial * $i))
done

printf "Factorial: "
echo $factorial
