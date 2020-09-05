# Program To Print An Arithmetic Progression Upto N Terms

read -p "Enter The Value Of First Term (a): " a
read -p "Enter The Value Of Common Difference (d): " d
read -p "Enter N: " n

for ((i = 1; i <= n; i++))
do
    an=$(($a + ($i - 1) * $d))
    printf "%d " $an
done
echo
