########################################################################
#                     Author: Bharat Singh Rajput                      #
#                     File Name: ReverseNumber.sh                      #
#                Creation Date: April 12, 2020 09:56 PM                #
#              Last Updated: September 10, 2020 01:24 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#                     Program To Reverse A Number                      #
########################################################################

read -p "Enter A Number: " number
temp=$number
reverse=0

while [ $number -gt 0 ]
do
	digit=$(($number % 10))
	number=$(($number / 10))
	reverse=$(($reverse * 10 + digit))
done

printf "Reverse: %d\n" $reverse
