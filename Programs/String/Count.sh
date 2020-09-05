# Program To Count Number Of Alphabets, Numbers, Whitespace & Special Character In A String

read -p "Enter A String: " str
len=${#str}
alpha=0
num=0
special=0
whitespace=0

for ((i = 0; i < $len; i++))
do
    char=${str:$i:1}
    if [[ $char =~ [[:alpha:]] ]]
        then alpha=$(($alpha  + 1))
    elif [[ $char =~ [[:digit:]] ]]
        then num=$(($num + 1))
    elif [[ $char =~ [[:space:]] ]]
        then whitespace=$(($whitespace + 1))
    else
        special=$(($special + 1))
    fi
done

echo "Alphabets: $alpha"
echo "Numbers: $num"
echo "Whitespaces: $whitespace"
echo "Special Characters: $special"

