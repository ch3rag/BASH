read -p "Enter Number Of Rows: " rows

for ((i = 0; i < rows; i++))
do
	for ((j = 0; j <= i; j++))
	do
		printf "* "
	done
	printf "\n"
done


