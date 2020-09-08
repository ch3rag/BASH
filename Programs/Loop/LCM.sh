# Program To Calculate LCM Of Two Number

read -p "Enter First Number: " a 
read -p "Enter Second Number: " b
x=$a
y=$b

while ((a != 0))
do
    temp=$a
    a=$(($b % $a))
    b=$temp
done

echo "LCM: $((($x * $y) / $b))"
