# Program To Print Table Of A Number

read -p "Enter A Number: " number
for i in {1..10}
do
	printf "%d X %d = %d\n" $number $i $(($number * $i))
done
