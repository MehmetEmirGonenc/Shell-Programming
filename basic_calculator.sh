echo -n "Enter first number:"
read n1
echo -n "Enter second number:"
read n2
echo -e "\nSelect an Operation:"
echo "1- Add"
echo "2- Subtract"
echo "3- Multiplication"
echo "4- Division"
echo -n "-->"
read op

if [ $op -eq 1 ]; then
	echo -n "$n1 + $n2 = "
	sum=$(($n1 + $n2))
	echo $sum

elif [ $op -eq 2 ]; then
	echo -n "$n1 - $n2 = "
	sub=$(($n1 - $n2))
	echo $sub

elif [ $op -eq 3 ]; then
	echo -n "$n1 * $n2 = "
	mul=$(($n1 * $n2))
	echo $mul

elif [ $op -eq 4 ]; then
	if [ $n2 -eq 0 ]; then
		echo "Division by 0 handled!"
		div=0
	else
		div=$(($n1 / $n2))
	fi
	echo -n "$n1 / $n2 = "
	echo $div
else
	echo "Undefined Operation!"
fi
