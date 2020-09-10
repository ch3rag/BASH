########################################################################
#                     Author: Bharat Singh Rajput                      #
#                        File Name: Factors.sh                         #
#                Creation Date: April 13, 2020 04:48 PM                #
#              Last Updated: September 10, 2020 01:22 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#                 Prorgam To Find Factors Of A Nuumber                 #
########################################################################

read -p "Enter A Number: " number

printf "Factors: "
for ((i = 1; i <= $(($number / 2 + 1)); i++))
do
    if (($number % $i == 0))
    then
        printf "%d " $i
    fi
done
echo $number
