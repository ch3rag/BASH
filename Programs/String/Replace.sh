########################################################################
#                     Author: Bharat Singh Rajput                      #
#                        File Name: Replace.sh                         #
#                Creation Date: April 16, 2020 03:14 PM                #
#              Last Updated: September 10, 2020 01:26 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#    Program To Replace All Occurances Of A String Or Character By     #
#            Another String Or Character In A Given String             #
########################################################################

read -p "Enter A String: " str
read -p "Enter String To Be Searched: " search
read -p "Enter String To Be Replaced With: " replace

searchLen=${#search}
max=${#str}
result=""
for ((i = 0; i < max; i++))
do
    slice=${str:$i:$searchLen}
    if [ "$slice" = "$search" ]
    then
        result=$result$replace
        i=$(($i + $searchLen - 1))
    else
        result=$result${str:$i:1}
    fi
done

echo "Result: $result"
