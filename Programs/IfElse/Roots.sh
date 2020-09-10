########################################################################
#                     Author: Bharat Singh Rajput                      #
#                         File Name: Roots.sh                          #
#                Creation Date: April 12, 2020 09:56 PM                #
#              Last Updated: September 10, 2020 01:18 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#   Program To Calculate The Nature Of Roots Of A Quadratic Equation   #
########################################################################

read -p "Enter The Value Of a: " a
read -p "Enter The Value Of b: " b
read -p "Enter The Value Of c: " c

discriminant=$(($b * $b - $((4 * $a * $c))))

printf "Discriminant: %d\n" $discriminant

if [ $discriminant -eq 0 ]
then 
	echo "Roots Are Real And Equal"
elif [ $discriminant -gt 0 ]
then
	echo "Roots Are Real And Distinct"
else 
	echo "Roots Are Imaginary"
fi
