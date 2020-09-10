########################################################################
#                     Author: Bharat Singh Rajput                      #
#                          File Name: LCM.sh                           #
#                Creation Date: April 13, 2020 08:13 PM                #
#              Last Updated: September 10, 2020 01:22 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#                Program To Calculate LCM Of Two Number                #
########################################################################

read -p "Enter First Number: " a 
read -p "Enter Second Number: " b
x=$a
y=$b

while ((a != 0))
do
    temp=$a
    a=$(($b % $a))
    b=$temp
done

echo "LCM: $((($x * $y) / $b))"
