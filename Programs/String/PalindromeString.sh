# Program To Check Whether The String Is Palindrome

read -p "Enter A String: " string

len=${#string}
reverse=""

for ((i = $len - 1; i >= 0; i--))
do
	reverse="$reverse${string:$i:1}"
done

if [ "$string" = "$reverse" ]
then 
	echo "String Is Palindrome"
else
	echo "String Is Not Palindrome"
fi
