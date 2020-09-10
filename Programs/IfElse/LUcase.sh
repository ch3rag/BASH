########################################################################
#                     Author: Bharat Singh Rajput                      #
#                         File Name: LUcase.sh                         #
#                Creation Date: April 12, 2020 09:56 PM                #
#              Last Updated: September 10, 2020 01:17 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#   Program To Check Whether The Alphabet Is Lowercase Or Uppercase    #
#                             Using Regex                              #
########################################################################

read -p "Enter An Alphabet: " -n1 alpha
echo

if [[ $alpha =~ [[:upper:]] ]] 
then 
	echo "Uppercase Alphabet"
elif [[ $alpha =~ [[:lower:]] ]]
then
	echo "Lowercase Alphabet"
else
	echo "Not An Alphabet"
fi
