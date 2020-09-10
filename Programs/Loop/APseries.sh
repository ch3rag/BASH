########################################################################
#                     Author: Bharat Singh Rajput                      #
#                        File Name: APseries.sh                        #
#                Creation Date: April 13, 2020 12:38 PM                #
#              Last Updated: September 10, 2020 01:19 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#       Program To Print An Arithmetic Progression Upto N Terms        #
########################################################################

read -p "Enter The Value Of First Term (a): " a
read -p "Enter The Value Of Common Difference (d): " d
read -p "Enter N: " n

for ((i = 1; i <= n; i++))
do
    an=$(($a + ($i - 1) * $d))
    printf "%d " $an
done
echo
