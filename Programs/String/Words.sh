# Program To Input A Sentence And Count The Number Of Words

read -p "Enter A Sentence: " str
len=${#str}
words=0

if [ "$str" != "" ]
then
    for ((i = 0; i < $len - 1; i++))
    do
        if [[ ${str:$i:2}  =~ [[:space:]][^[:space:]] ]]
        then      
            words=$(($words + 1))
        fi
    done
else
    words=-1
fi
echo "Words: $(($words + 1))"