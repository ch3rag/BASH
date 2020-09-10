########################################################################
#                     Author: Bharat Singh Rajput                      #
#                    File Name: PositiveNegative.sh                    #
#                Creation Date: April 12, 2020 09:56 PM                #
#              Last Updated: September 10, 2020 01:17 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
# Program To Check Whether A Number A Number Is Positive, Negative Or  #
#                                Zero                                  #
########################################################################

printf "Enter A Number: "
read number

if [ $number -gt 0 ]
then
	echo "Positive Number"
elif [ $number -lt 0 ]
then
	echo "Negative Number"
else
	echo "Zero"
fi
