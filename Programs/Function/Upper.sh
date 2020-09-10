########################################################################
#                     Author: Bharat Singh Rajput                      #
#                         File Name: Upper.sh                          #
#                Creation Date: April 16, 2020 08:05 PM                #
#              Last Updated: September 10, 2020 01:16 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#      Conversion Of String From Lower Case To Upper Case Using        #
#                           Transliteration                            #
########################################################################

upperCase() {
    echo "Upper Case: `echo $1 | tr [:lower:] [:upper:]:`"
}
