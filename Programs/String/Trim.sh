# Program To Trim Extra Whitespaces In A String

read -p "Enter A String: " str
result=""

for ((i = 0; i < ${#str}; i++))
do  
    if [[ ${str:$i:2}  =~ [[:space:]][[:space:]] ]]
    then      
        continue
    else
        result=$result${str:$i:1}
    fi
done

echo "Result: $result"
