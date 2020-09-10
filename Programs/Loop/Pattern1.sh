########################################################################
#                     Author: Bharat Singh Rajput                      #
#                        File Name: Pattern1.sh                        #
#                Creation Date: April 16, 2020 03:37 PM                #
#              Last Updated: September 10, 2020 01:23 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#     Program To Print Following Pattern Specified Number Of Rows      #
########################################################################

# *
# **
# ***
# ****
# *****
# ******
# ...n

read -p "Enter The Number Of Rows: " rows
i=0
while [ $i -lt $rows ]
do
	cols=0
	while [ $cols -le $i ]
	do
		printf "*"
		cols=$(($cols + 1))
	done
	echo
	i=$(($i + 1))
done
