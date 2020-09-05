# Program To Find The Frequency Of Each Alphabet In  A String

read -p "Enter A String: " str
str=${str^^}
alpha=($(printf "0%.0s " {1..26}))


for ((i = 0; i < ${#str}; i++))
do
    char=${str:$i:1}
    if [[ $char =~ [[:alpha:]] ]]
    then
        ascii=`printf "%d" "'$char"`
        ascii=$(($ascii - 65))
        alpha[$ascii]=$((${alpha[$ascii]} + 1))
    fi
done

for ((i = 0; i < 26; i++))
do
    if ((${alpha[$i]} > 0))
    then
        char=`printf \\\\$(printf "%o" $(($i + 65)))`
        printf "%s\t%d\n" $char ${alpha[$i]}
    fi
done