########################################################################
#                     Author: Bharat Singh Rajput                      #
#                     File Name: StringReverse.sh                      #
#                Creation Date: April 12, 2020 09:56 PM                #
#              Last Updated: September 10, 2020 01:27 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#                     Program To Reverse A String                      #
########################################################################

read -p "Enter A String: " string

len=${#string}
reverse=""
for ((i = $len - 1; i >= 0; i--))
do
	reverse="$reverse${string:$i:1}"
done

printf "Reverse: %s\n" "$reverse"

