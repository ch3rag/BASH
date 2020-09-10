########################################################################
#                     Author: Bharat Singh Rajput                      #
#                       File Name: Factorial.sh                        #
#                Creation Date: April 12, 2020 09:56 PM                #
#              Last Updated: September 10, 2020 01:21 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#                Program To Find Factorial Of A Number                 #
########################################################################

read -p "Enter A Number: " number
factorial=1

for ((i = 1; i <= $number; i++))
do
	factorial=$(($factorial * $i))
done

printf "Factorial: "
echo $factorial
