# Program To Input N Numbers And Calculate Their Average

flag=1
length=0
sum=0

while [ $flag -eq 1 ]
do
    read -p "Enter A Number: " input
    sum=$(($sum + $input))
    length=$(($length + 1))
    read -n1 -p "Press 1 To Enter More Or Any Other Key To Exit: " flag
    echo
done

average=`echo "scale=4; $sum / $length" | bc`
echo "Average: $average"
