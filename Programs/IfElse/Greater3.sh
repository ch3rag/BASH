########################################################################
#                     Author: Bharat Singh Rajput                      #
#                        File Name: Greater3.sh                        #
#                Creation Date: April 12, 2020 09:56 PM                #
#              Last Updated: September 10, 2020 01:17 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#                Program To Find Greatest Of 3 Numbers                 #
########################################################################

printf "Enter A : "
read A
printf "Enter B : "
read B
printf "Enter C : "
read C

if [ $A -gt $B ]
then
	if [ $A -gt $C ]
	then
		echo "A Is Greatest"
	else
		echo "C Is Greatest"
	fi
elif [ $B -gt $C ]
then 
	echo "B Is Greatest"
else
	echo "C Is Greatest"
fi
