########################################################################
#                     Author: Bharat Singh Rajput                      #
#                    File Name: FactorialSeries.sh                     #
#                Creation Date: April 13, 2020 09:48 PM                #
#              Last Updated: September 10, 2020 01:21 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#       Program To Print The Sum Of Following Series Upto N Terms:     #
#                       1! +  2! + 3! + 4! + ....                      #
########################################################################

read -p "Enter N: " n
sum=0

for ((i = 1; i <= $n; i++))
do
    factorial=1
    for ((j = 1; j <= $i; j++))
    do
        factorial=$(($factorial * $j))
    done
    sum=$(($sum + $factorial))
done

echo "Sum: $sum"
