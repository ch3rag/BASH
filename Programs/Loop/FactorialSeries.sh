# Program To Print The Sum Of Following Series Upto N Terms:
# 1! + 2! + 3! + 4! + ....

read -p "Enter N: " n
sum=0

for ((i = 1; i <= $n; i++))
do
    factorial=1
    for ((j = 1; j <= $i; j++))
    do
        factorial=$(($factorial * $j))
    done
    sum=$(($sum + $factorial))
done

echo "Sum: $sum"
