NthPower() {
	if (($2 > 0))
	then

		echo $(($1 * $(NthPower  $1 $(($2 - 1)))))
	else
		echo "1"
	fi
}

NthPower 2 8
