# Prorgam To Find Factors Of A Nuumber

read -p "Enter A Number: " number

printf "Factors: "
for ((i = 1; i <= $(($number / 2 + 1)); i++))
do
    if (($number % $i == 0))
    then
        printf "%d " $i
    fi
done
echo $number
