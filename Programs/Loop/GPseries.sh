########################################################################
#                     Author: Bharat Singh Rajput                      #
#                        File Name: GPseries.sh                        #
#                Creation Date: April 13, 2020 08:20 PM                #
#              Last Updated: September 10, 2020 01:22 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#        Program To Print An Geometric Progression Upto N Terms        #
########################################################################

read -p "Enter The Value Of First Term (a): " a
read -p "Enter The Value Of Common Ratio (r): " r
read -p "Enter N: " n

for ((i = 1; i <= n; i++))
do
    rn=1
    for ((j = 1; j < $i; j++))
    do
        rn=$(($rn * $r))
    done
    tn=$(($a * $rn))
    printf "%d " $tn
done
echo
