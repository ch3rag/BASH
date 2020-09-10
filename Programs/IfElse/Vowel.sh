########################################################################
#                     Author: Bharat Singh Rajput                      #
#                         File Name: Vowel.sh                          #
#                Creation Date: April 13, 2020 11:23 AM                #
#              Last Updated: September 10, 2020 01:18 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#     Program To Check Whether The Alphabet Is Vowel Or Consonant      #
########################################################################

read -p "Enter An Alphabet: " -n1 alpha
echo

if [[ $alpha =~ [aeiouAEIOU] ]] 
then 
	echo "Vowel"
elif [[ $alpha =~ [bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ] ]]
then
	echo "Consonant"
else
	echo "Not An Alphabet"
fi	
