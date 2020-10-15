read -p "Enter First String: " str1
read -p "Enter Second String: " str2


if [ "$str1" =~ "$str2" ]
then
	echo "Yay!"
else
	echo "Nah!"
fi

