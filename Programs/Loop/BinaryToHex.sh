# Program To Convert Binary To Hexadecimal

read -p "Enter A Binary Number: " binary
len=${#binary}
j=1
temp=0
result=""

for ((i = len - 1; i >= 0; i--))
do
    digit=${binary:i:1}
    temp=$(($temp + $digit * $j))
    j=$(($j * 2))
    if (($j == 16 || i == 0))
    then
        if (($temp < 10)); then result="$temp$result";
        elif (($temp == 10)); then result="A$result"
        elif (($temp == 11)); then result="B$result"
        elif (($temp == 12)); then result="C$result"
        elif (($temp == 13)); then result="D$result"
        elif (($temp == 14)); then result="E$result"
        elif (($temp == 15)); then result="F$result"; fi
        j=1
        temp=0
    fi
done

echo "Hexadecimal: $result"