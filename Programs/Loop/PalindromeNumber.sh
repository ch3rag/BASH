# Program To Check  Whether A Number Palindrome Or Not

read -p "Enter A Number: " number
temp=$number
reverse=0

while [ $number -gt 0 ]
do
	digit=$(($number % 10))
	number=$(($number / 10))
	reverse=$(($reverse * 10 + digit))
done

if [ $reverse -eq $temp ]
then 
	echo "Palindrome Number"
else
	echo "Not An Palindrome Number"
fi
