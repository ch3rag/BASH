########################################################################
#                     Author: Bharat Singh Rajput                      #
#                     File Name: BinaryToOctal.sh                      #
#                Creation Date: April 13, 2020 04:21 PM                #
#              Last Updated: September 10, 2020 01:19 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#               Program To Convert Binary To Hexadecimal               #
########################################################################

read -p "Enter A Binary Number: " binary
len=${#binary}
j=1
temp=0
result=""

for ((i = len - 1; i >= 0; i--))
do
    digit=${binary:i:1}
    temp=$(($temp + $digit * $j))
    j=$(($j * 2))
    if (($j == 8 || i == 0))
    then
        result="$temp$result";
        j=1
        temp=0
    fi
done

echo "Octal: $result"
