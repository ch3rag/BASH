########################################################################
#                     Author: Bharat Singh Rajput                      #
#                      File Name: EuclideanGCD.sh                      #
#                Creation Date: April 13, 2020 08:05 PM                #
#              Last Updated: September 10, 2020 01:20 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#          Program To Calculate GCD Using Euclidean Algorithm          #
########################################################################

read -p "Enter First Number: " a 
read -p "Enter Second Number: " b

while ((a != 0))
do
    temp=$a
    a=$(($b % $a))
    b=$temp
done

echo "GCD: $b"
