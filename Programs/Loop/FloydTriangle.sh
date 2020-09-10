########################################################################
#                     Author: Bharat Singh Rajput                      #
#                     File Name: FloydTriangle.sh                      #
#                Creation Date: April 13, 2020 09:22 PM                #
#              Last Updated: September 10, 2020 01:22 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#             Program To Print Floyd Triangle Upto N Rows              #
########################################################################

read -p "Enter The Number Of Rows: " rows
for ((i = 0; i < $rows; i++))
do
    c=$((($i % 2) + 1))
    for ((j = 0; j <= $i; j++))
    do
        printf "%d" $(($c % 2))
        c=$(($c + 1))
    done
    echo
done
