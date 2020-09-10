########################################################################
#                     Author: Bharat Singh Rajput                      #
#                      File Name: SumOfDigits.sh                       #
#                Creation Date: April 12, 2020 09:56 PM                #
#              Last Updated: September 10, 2020 01:24 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#                 Program To Sum Of Digits Of A Number                 #
########################################################################

read -p "Enter A Number: " number
sum=0

while [ $number -gt 0 ]
do
	digit=$(($number % 10))
	sum=$(($sum + $digit))
	number=$(($number / 10))
done

printf "Sum Of Digits: %d\n" $sum
