########################################################################
#                     Author: Bharat Singh Rajput                      #
#                    File Name: DecimalToBinary.sh                     #
#                Creation Date: April 12, 2020 09:56 PM                #
#              Last Updated: September 10, 2020 01:20 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#           Program To Convert A Decimal Number Into Binary            #
########################################################################

read -p "Enter A Number: " number
binary=""

while [ $number -gt 0 ]
do	
	digit=$(($number % 2))	
	number=$(($number / 2))
	binary="$digit$binary"
done

printf "Binary Equivalent: %s\n" $binary
