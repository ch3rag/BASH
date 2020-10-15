read -p "Enter A Number: " number
sum=0
while [ $number -gt 0 ]
do
	digit=`expr $number % 10`
	number=`expr $number / 10`
	sum=`expr $sum  + $digit`
done

echo $sum
