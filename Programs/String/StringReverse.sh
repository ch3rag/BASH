# Program To Reverse A String

read -p "Enter A String: " string

len=${#string}
reverse=""
for ((i = $len - 1; i >= 0; i--))
do
	reverse="$reverse${string:$i:1}"
done

printf "Reverse: %s\n" "$reverse"
