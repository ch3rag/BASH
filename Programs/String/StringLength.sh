########################################################################
#                     Author: Bharat Singh Rajput                      #
#                      File Name: StringLength.sh                      #
#                Creation Date: April 14, 2020 02:24 PM                #
#              Last Updated: September 10, 2020 01:27 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#                Program To Find Out Length Of A String                #
########################################################################

read -p "Enter A String: " str
len=0

while [ "${str:len:1}" != "" ]
do
    len=$(($len + 1))
done

echo "Length: $len"
