read -p "Enter A Number: " number
sum=0
while (( $number > 0 ))
do
	digit=$(($number % 10))
	sum=$(($sum + $digit))
	number=$(($number / 10))
done

echo $sum
