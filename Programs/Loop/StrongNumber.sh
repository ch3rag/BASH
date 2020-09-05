# Program To Check Whether A Number Is Strong Number Or Not
# 1! + 4! + 5! = 145

read -p "Enter A Number: " number
backup=$number
sum=0
while (($number >  0))
do
    digit=$(($number % 10))
    number=$(($number / 10))
    fact=1
    for ((i = 1; i <= digit; i++))
    do
        fact=$(($fact * $i))        
    done
    sum=$(($sum + $fact))
done

if (( $backup == $sum ))
then 
    echo "Strong Number"
else
    echo "Not A Strong Number"
fi