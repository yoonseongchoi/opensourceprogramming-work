#
mkdir temp
echo "...create temp directory..."
cp file1.txt temp
cp file2.txt temp
cp cal.sh temp
echo "copy files to temp directory..."
echo "1) add"
echo "2) sub"
echo "3) div"
echo "4) mul"
select var in  1 2 3 4
do
	echo "select menu : "$var
	if [ "$var" -eq "1" ]; then
		echo "...add selected..."
		echo "run calculater..."
		cys=$var
	elif [ "$var" -eq "2" ]; then
		echo "...sub selected..."
		echo "run calculater..."
		cys=$var
	elif [ "$var" -eq "3" ]; then
		echo "...div selected..."
		echo "run calculater..."
		cys=$var
	else
		echo "...mult selected..."
		echo "run calculater..."
		cys=$var
	fi
	break
done
./cal.sh $cys

