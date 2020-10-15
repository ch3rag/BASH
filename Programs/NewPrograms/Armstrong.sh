read -p "Enter A Number: " number
backup=$number
sum=0

while ((number > 0))
do
	digit=$((number % 10))
	digitCubed=$((digit * digit * digit))
	sum=$((sum + digitCubed))
	number=$((number / 10))
done

if ((sum == backup)); then echo "Armstrong";
else  echo "No"; fi;

