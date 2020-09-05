# Program To Capitalize Each Word Of The String

read -p "Enter A String: " str
len=${#str}
result=""
char=""

for ((i = 0; i < $len; i++))
do
    prevChar=$char
    char=${str:$i:1}
    ascii=`printf "%d" "'$char"`
    if [ "$prevChar" = "" -o $ascii -ge 97 -a $ascii -le 122 -a "$prevChar" = " " ]
    then
        ascii=$(($ascii - 32))
        result=$result`printf \\\\$(printf "%o" $ascii)`        
    else
        result=$result`printf \\\\$(printf "%o" $ascii)`
    fi
done

echo "Capitalized: $result"