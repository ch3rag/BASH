########################################################################
#                     Author: Bharat Singh Rajput                      #
#                   File Name: FactorialRecursion.sh                   #
#                Creation Date: April 17, 2020 03:47 PM                #
#              Last Updated: September 10, 2020 01:15 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#      Function To Compute Factorial Of A Number Using Recursion       #
########################################################################

factorial() {
    if [ $1 -eq 0 ]
    then
        echo "1"
    else
        echo $(($1 * $(factorial $(($1 - 1)))))
    fi
}
