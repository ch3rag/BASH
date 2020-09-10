########################################################################
#                     Author: Bharat Singh Rajput                      #
#                      File Name: EuclideanGCD.sh                      #
#                Creation Date: April 16, 2020 08:58 PM                #
#              Last Updated: September 10, 2020 01:15 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#  Function To Evaluate GCD Of Two Numbers Using Recursive Euclidean   #
#                              Algorithm                               #
########################################################################

gcd() {
    if [ $1 -eq 0 ]; then echo $2
    else echo $(gcd $(($2 % $1)) $1); fi
}
