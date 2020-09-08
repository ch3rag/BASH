# Program To Convert A Decimal Number Into Binary

read -p "Enter A Number: " number
binary=""

while [ $number -gt 0 ]
do	
	digit=$(($number % 2))	
	number=$(($number / 2))
	binary="$digit$binary"
done

printf "Binary Equivalent: %s\n" $binary
