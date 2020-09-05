# Program To Calculate Nth Power Of A Number

read -p "Enter A Number: " number
read -p "Enter N: " n

result=1

for ((i = 0; i < $n; i++))
do
    result=$(($result * $number))
done

echo "Result: $result"
