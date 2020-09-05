# Program To Calculate The Nature Of Roots Of A Quadratic Equation

read -p "Enter The Value Of a: " a
read -p "Enter The Value Of b: " b
read -p "Enter The Value Of c: " c

discriminant=$(($b * $b - $((4 * $a * $c))))

printf "Discriminant: %d\n" $discriminant

if [ $discriminant -eq 0 ]
then 
	echo "Roots Are Real And Equal"
elif [ $discriminant -gt 0 ]
then
	echo "Roots Are Real And Distinct"
else 
	echo "Roots Are Imaginary"
fi
