while read line; do
	value1=$line
done < file1.txt
while read line; do
	value2=$line
done < file2.txt
if [ $# -gt 0 ]; then
	echo "num1 : "$value1
	echo "num2 : "$value2
	if [ "$1" -eq "1" ]; then
		echo "op : add"
		echo "result : " $(($value1 + $value2))
	elif [ "$1" -eq "2" ]; then
		echo "op : sub"
		echo "result : " $(($value1 - $value2))
	elif [ "$1" -eq "3" ]; then
		echo "op : div"
		echo "result : " $(($value1 / $value2))
	else
		echo "op : mul"
		echo "result : " $(($value1 * $value2))
	fi
else
	echo "...none operator parameter...."
	echo "1) add"
	echo "2) sub"
	echo "3) div"
	echo "4) mul"
	select var in  1 2 3 4
	do
		echo "select menu : "$var
		echo "num1 : "$value1
		echo "num2 : "$value2
		if [ "$var" -eq "1" ]; then
			echo "op : add"
			echo "result : " $(($value1 + $value2))
		elif [ "$var" -eq "2" ]; then
			echo "op : sub"
			echo "result : " $(($value1 - $value2))

		elif [ "$var" -eq "3" ]; then
			echo "op : div"
			echo "result : " $(($value1 / $value2))
		else
			echo "op : mul"
			echo "result : " $(($value1 * $value2))
		fi
		break
	done
fi


















	
