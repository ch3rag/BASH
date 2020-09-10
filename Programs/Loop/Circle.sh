########################################################################
#                     Author: Bharat Singh Rajput                      #
#                         File Name: Circle.sh                         #
#                Creation Date: April 13, 2020 09:54 PM                #
#              Last Updated: September 10, 2020 01:20 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#  Program To Input Radius Of A Circle And Print It's Circumference    #
#                              And Area                                #
########################################################################


read -p "Enter Radius: " radius

circumference=`echo "scale=5; 2 * 3.14159 * $radius" | bc`
area=`echo "scale=5; 3.14159 * $radius * $radius" | bc`

printf "Circumference: %f\nArea: %f\n" $circumference $area
