# Program To Find Frequency Of A String Or A Character In A Given String

read -p "Enter A String: " str
read -p "Enter String To Be Searched: " search
searchLen=${#search}
max=$((${#str} - $searchLen))
count=0

for ((i = 0; i < max; i++))
do
    if [ "${str:$i:$searchLen}" = "$search" ]
    then
        count=$(($count + 1))
    fi
done

echo "Frequency Of Searched String Is: $count"
