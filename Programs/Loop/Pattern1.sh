# Program To Print Following Pattern Specified Number Of Rows
# *
# **
# ***
# ****
# *****
# ******
# ...n

read -p "Enter The Number Of Rows: " rows
i=0
while [ $i -lt $rows ]
do
	cols=0
	while [ $cols -le $i ]
	do
		printf "*"
		cols=$(($cols + 1))
	done
	echo
	i=$(($i + 1))
done
