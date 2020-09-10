########################################################################
#                     Author: Bharat Singh Rajput                      #
#                        File Name: LeapYear.sh                        #
#                Creation Date: April 12, 2020 09:56 PM                #
#              Last Updated: September 10, 2020 01:17 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#            Program To Check Whether A Year Is A Leap Year            #
########################################################################

printf "Enter Year: "
read year
if [ `expr $year % 4` -eq 0 ]
then
	echo "Leap Year"
else
	echo "Not A Leap  Year"
fi
