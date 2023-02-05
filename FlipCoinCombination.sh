echo "Flip coin problems on head and Tails"
flip=$(($RANDOM%2))
if [ $flip -eq 1 ]
then
	echo "HEADS"
else
	echo "TAILS"
fi

