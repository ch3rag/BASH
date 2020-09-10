########################################################################
#                     Author: Bharat Singh Rajput                      #
#                      File Name: StringSearch.sh                      #
#                Creation Date: April 16, 2020 02:50 PM                #
#              Last Updated: September 10, 2020 01:28 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#             Program To Search A String In A Given String             #
########################################################################

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
