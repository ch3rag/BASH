# Program To Check Whether The Alphabet Is Lowercase Or Uppercase Using Regex
read -p "Enter An Alphabet: " -n1 alpha
echo

if [[ $alpha =~ [[:upper:]] ]] 
then 
	echo "Uppercase Alphabet"
elif [[ $alpha =~ [[:lower:]] ]]
then
	echo "Lowercase Alphabet"
else
	echo "Not An Alphabet"
fi
