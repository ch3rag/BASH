# Program To Convert Binary To Decimal

read -p "Enter A Binary Number: " binary

len=${#binary}
j=1
result=0

for ((i = len - 1; i >= 0; i--))
do
    digit=${binary:i:1}
    result=$(($result + $j * $digit))
    j=$(($j * 2))
done

echo "Decimal: $result"