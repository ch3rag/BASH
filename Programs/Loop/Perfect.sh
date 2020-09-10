########################################################################
#                     Author: Bharat Singh Rajput                      #
#                        File Name: Perfect.sh                         #
#                Creation Date: April 13, 2020 04:59 PM                #
#              Last Updated: September 10, 2020 01:23 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#   Program To Check Whether A Number Is Perfect Or Not : 6 = 3 X 2 X  #
#                          1, 6 = 3 + 2 + 1                            #
########################################################################



read -p "Enter A Number: " number
sum=0

for ((i = 1; i <= $(($number / 2 + 1)); i++))
do
    if (($number % $i == 0))
    then
        sum=$(($sum + i))
    fi
done
if (($sum == $number))
then 
    echo "Perfect Number"
else
    echo "Not A Perfect Number"
fi
