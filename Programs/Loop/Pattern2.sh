# Program To Print Following Pattern Specified Number Of Rows
# *******
# ******
# *****
# ****
# ***
# **
# *
# ...n

read -p "Enter The Number Of Rows: " rows
while [ $rows -gt 0 ]
do
	cols=0
	while [ $cols -lt $rows ]
	do
		printf "*"
		cols=$(($cols + 1))
	done
	echo
	rows=$(($rows - 1))
done

