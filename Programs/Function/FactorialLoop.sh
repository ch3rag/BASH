########################################################################
#                     Author: Bharat Singh Rajput                      #
#                     File Name: FactorialLoop.sh                      #
#                Creation Date: April 16, 2020 07:12 PM                #
#              Last Updated: September 10, 2020 01:15 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#          Function To Compute Factorial Of Number With Loop           #
########################################################################

factorial() {
    number=$1
    factorial=1

    for ((i = 1; i <= $number; i++))
    do
        factorial=$(($factorial * $i))
    done

    echo $factorial
}
