########################################################################
#                     Author: Bharat Singh Rajput                      #
#                     File Name: DecimalToOctal.sh                     #
#                Creation Date: April 13, 2020 04:31 PM                #
#              Last Updated: September 10, 2020 01:20 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#            Program To Convert A Decimal Number Into Octal            #
########################################################################

read -p "Enter A Number: " number
oct=""

while [ $number -gt 0 ]
do	
	digit=$(($number % 8))	
	number=$(($number / 8))
    if (($digit < 10)); then oct="$digit$oct"
    elif (($digit == 10)); then oct="A$oct"
    elif (($digit == 11)); then oct="B$oct"
    elif (($digit == 12)); then oct="C$oct"
    elif (($digit == 13)); then oct="D$oct"
    elif (($digit == 14)); then oct="E$oct"
    elif (($digit == 15)); then oct="F$oct"; fi
done

printf "Octal Equivalent: %s\n" $oct
