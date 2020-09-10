########################################################################
#                     Author: Bharat Singh Rajput                      #
#                       File Name: Frequency.sh                        #
#                Creation Date: April 16, 2020 02:54 PM                #
#              Last Updated: September 10, 2020 01:25 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#   Program To Find Frequency Of A String Or A Character In A Given    #
#                               String                                 #
########################################################################

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
