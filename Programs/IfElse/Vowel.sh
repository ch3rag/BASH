# Program To Check Whether The Alphabet Is Vowel Or Consonant
read -p "Enter An Alphabet: " -n1 alpha
echo

if [[ $alpha =~ [aeiouAEIOU] ]] 
then 
	echo "Vowel"
elif [[ $alpha =~ [bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ] ]]
then
	echo "Consonant"
else
	echo "Not An Alphabet"
fi	




