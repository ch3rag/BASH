# Program To Print Following Pattern Specified Number Of Rows
#    *
#   ***
#  *****
# *******
# ...n

read -p "Enter The Number Of Rows: " rows
i=1
while [ $rows -gt 0 ]
do
	spaces=$(($rows - 1))
	while [ $spaces -gt 0 ]
	do
		printf " "
		spaces=$(($spaces - 1))
	done
	cols=$i
	while [ $cols -gt 0 ]
	do
		printf "*"
		cols=$(($cols - 1))
	done
	echo
	i=$(($i + 2))
	rows=$(($rows - 1))
done
