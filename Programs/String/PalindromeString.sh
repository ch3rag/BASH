########################################################################
#                     Author: Bharat Singh Rajput                      #
#                    File Name: PalindromeString.sh                    #
#                Creation Date: April 12, 2020 09:56 PM                #
#              Last Updated: September 10, 2020 01:26 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#          Program To Check Whether The String Is Palindrome           #
########################################################################

read -p "Enter A String: " string

len=${#string}
reverse=""

for ((i = $len - 1; i >= 0; i--))
do
	reverse="$reverse${string:$i:1}"
done

if [ "$string" = "$reverse" ]
then 
	echo "String Is Palindrome"
else
	echo "String Is Not Palindrome"
fi
