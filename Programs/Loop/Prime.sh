# Procgram To Check Whether A Number Is Prime Or Not

read -p "Enter A Number: " number
flag=0
for ((i=2; i < $(($number / 2 + 1)); i++))
do
	if [ $(($number % $i)) -eq 0 ]
	then
		flag=1
	fi
done

if [ $flag -eq 0 ] 
then 
	echo "Prime Number"
else
	echo "Not A Prime Number"
fi	
