########################################################################
#                     Author: Bharat Singh Rajput                      #
#                    File Name: BinaryToDecimal.sh                     #
#                Creation Date: April 13, 2020 03:47 PM                #
#              Last Updated: September 10, 2020 01:19 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#                 Program To Convert Binary To Decimal                 #
########################################################################

read -p "Enter A Binary Number: " binary

len=${#binary}
j=1
result=0

for ((i = len - 1; i >= 0; i--))
do
    digit=${binary:i:1}
    result=$(($result + $j * $digit))
    j=$(($j * 2))
done

echo "Decimal: $result"
