########################################################################
#                     Author: Bharat Singh Rajput                      #
#                      File Name: DecimalToHex.sh                      #
#                Creation Date: April 13, 2020 04:27 PM                #
#              Last Updated: September 10, 2020 01:20 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#         Program To Convert A Decimal Number Into Hexadecimal         #
########################################################################

read -p "Enter A Number: " number
hex=""

while [ $number -gt 0 ]
do	
	digit=$(($number % 16))	
	number=$(($number / 16))
    if (($digit < 10)); then hex="$digit$hex"
    elif (($digit == 10)); then hex="A$hex"
    elif (($digit == 11)); then hex="B$hex"
    elif (($digit == 12)); then hex="C$hex"
    elif (($digit == 13)); then hex="D$hex"
    elif (($digit == 14)); then hex="E$hex"
    elif (($digit == 15)); then hex="F$hex"; fi
done

printf "Hexadecimal Equivalent: %s\n" $hex
