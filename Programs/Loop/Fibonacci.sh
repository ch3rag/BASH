########################################################################
#                     Author: Bharat Singh Rajput                      #
#                       File Name: Fibonacci.sh                        #
#                Creation Date: April 12, 2020 09:56 PM                #
#              Last Updated: September 10, 2020 01:22 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#               Program To Print Fibonacci Series Upto N               #
########################################################################

read -p "Enter N: " n
a=0
b=1
if [ $n -eq 1 ]; then echo "0";
elif [ $n -eq 2 ]; then echo "0 1";
elif [ $n -ge 3 ]; then
	printf "0 1 "
	while [ $n -ge 3 ]
	do
		c=$(($a + $b))
		a=$b
		b=$c
		printf "%d " $c
		n=$(($n - 1))
	done
	echo
fi 
