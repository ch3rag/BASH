########################################################################
#                     Author: Bharat Singh Rajput                      #
#                        File Name: Average.sh                         #
#                Creation Date: April 13, 2020 12:31 PM                #
#              Last Updated: September 10, 2020 01:19 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#        Program To Input N Numbers And Calculate Their Average        #
########################################################################

flag=1
length=0
sum=0

while [ $flag -eq 1 ]
do
    read -p "Enter A Number: " input
    sum=$(($sum + $input))
    length=$(($length + 1))
    read -n1 -p "Press 1 To Enter More Or Any Other Key To Exit: " flag
    echo
done

average=`echo "scale=4; $sum / $length" | bc`
echo "Average: $average"
