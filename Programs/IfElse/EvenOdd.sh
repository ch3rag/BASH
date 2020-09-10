########################################################################
#                     Author: Bharat Singh Rajput                      #
#                        File Name: EvenOdd.sh                         #
#                Creation Date: April 13, 2020 04:24 PM                #
#              Last Updated: September 10, 2020 01:16 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#           Program To Check Whether A Number Is Even Or Odd           #
########################################################################

printf "Enter A Number: "
read number
if [ `expr $number % 2` -eq 0 ]
then
	echo "Even Number"
else
	echo "Odd Number"
fi
---
