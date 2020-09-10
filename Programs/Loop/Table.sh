########################################################################
#                     Author: Bharat Singh Rajput                      #
#                         File Name: Table.sh                          #
#                Creation Date: April 12, 2020 09:56 PM                #
#              Last Updated: September 10, 2020 01:24 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#                  Program To Print Table Of A Number                  #
########################################################################

read -p "Enter A Number: " number
for i in {1..10}
do
	printf "%d X %d = %d\n" $number $i $(($number * $i))
done
