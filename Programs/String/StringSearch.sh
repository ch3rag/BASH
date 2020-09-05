# Program To Search A String In A Given String

read -p "Enter A String: " str
read -p "Enter String To Be Searched: " search
searchLen=${#search}
max=$((${#str} - $searchLen))
index=-1

for ((i = 0; i < max; i++))
do
    if [ "${str:$i:$searchLen}" = "$search" ]
    then
        index=$i
        break
    fi
done

if (( $index != -1 ))
then
    echo "Searched String Is Present At Index: $index"
else
    echo "Not Found"
fi

