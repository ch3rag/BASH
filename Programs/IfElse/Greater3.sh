# Program To Find Greatest Of 3 Numbers

printf "Enter A : "
read A
printf "Enter B : "
read B
printf "Enter C : "
read C

if [ $A -gt $B ]
then
	if [ $A -gt $C ]
	then
		echo "A Is Greatest"
	else
		echo "C Is Greatest"
	fi
elif [ $B -gt $C ]
then 
	echo "B Is Greatest"
else
	echo "C Is Greatest"
fi
