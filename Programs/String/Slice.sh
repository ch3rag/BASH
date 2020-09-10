########################################################################
#                     Author: Bharat Singh Rajput                      #
#                         File Name: Slice.sh                          #
#                Creation Date: April 14, 2020 05:26 PM                #
#              Last Updated: September 10, 2020 01:27 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#                      Program To Slice A String                       #
########################################################################

read -p "Enter A String: " str
read -p "Enter Starting Index: " i
read -p "Enter Final Index: " j

len=${#str}
slice=""

if (( $i < 0 || $i >= len || $j < 0 || $j >= len || $j < $i ))
then
    echo "Invalid Index"
else
    for ((k = i; k <= j; k++))    
    do
        slice=$slice${str:k:1}
    done
fi


echo "Slice: $slice"
