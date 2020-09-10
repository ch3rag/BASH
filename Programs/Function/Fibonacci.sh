########################################################################
#                     Author: Bharat Singh Rajput                      #
#                       File Name: Fibonacci.sh                        #
#                Creation Date: April 16, 2020 08:46 PM                #
#              Last Updated: September 10, 2020 01:15 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#   Function To Print Nth Term Of Fibonacci Sequence Using Recursion   #
########################################################################

fibonacci() {
    if [ $1 -eq 0 ]; then echo "0"
    elif [ $1 -eq 1 ]; then echo "1"
    else echo $(( $(fibonacci $(($1 - 1))) + $(fibonacci $(($1 - 2))) ))
    fi
}
