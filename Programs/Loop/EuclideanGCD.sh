# Program To Calculate GCD Using Euclidean Algorithm

read -p "Enter First Number: " a 
read -p "Enter Second Number: " b

while ((a != 0))
do
    temp=$a
    a=$(($b % $a))
    b=$temp
done

echo "GCD: $b"
