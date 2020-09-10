########################################################################
#                     Author: Bharat Singh Rajput                      #
#                        File Name: NthPower.sh                        #
#                Creation Date: April 13, 2020 05:06 PM                #
#              Last Updated: September 10, 2020 01:22 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#              Program To Calculate Nth Power Of A Number              #
########################################################################

read -p "Enter A Number: " number
read -p "Enter N: " n

result=1

for ((i = 0; i < $n; i++))
do
    result=$(($result * $number))
done

echo "Result: $result"
