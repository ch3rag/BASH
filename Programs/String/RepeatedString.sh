########################################################################
#                     Author: Bharat Singh Rajput                      #
#                     File Name: RepeatedString.sh                     #
#                Creation Date: April 16, 2020 04:57 PM                #
#              Last Updated: September 10, 2020 01:26 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#  Command Line Program To Generate A Repeated String N Times With A   #
#                           Given Delimiter                            #
########################################################################

str=$1
times=$2
delimiter=$3

if [ "$2" = "" ]; then times=0; fi

for ((i = 0; i < $times; i++))
do
    printf "%s%s" "$str" "$delimiter"
done

echo
