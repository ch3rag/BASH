########################################################################
#                     Author: Bharat Singh Rajput                      #
#                        File Name: Pattern2.sh                        #
#                Creation Date: April 12, 2020 09:56 PM                #
#              Last Updated: September 10, 2020 01:23 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#     Program To Print Following Pattern Specified Number Of Rows      #
########################################################################


# *******
# ******
# *****
# ****
# ***
# **
# *
# ...n

read -p "Enter The Number Of Rows: " rows
while [ $rows -gt 0 ]
do
	cols=0
	while [ $cols -lt $rows ]
	do
		printf "*"
		cols=$(($cols + 1))
	done
	echo
	rows=$(($rows - 1))
done
