
#!/bin/bash -x

RANDOM=$((RANDOM%2))

Hcount=100
Tcount=100
i=1

echo "Game is Starting With Rs.100 "
echo ""

while [ $Hcount -le 200 ] | [ $Tcount -ge 1 ]
do
	x1=$((RANDOM%10))
	x2=$(($x1%2))

	if [ $x2 -eq 0 ]
	then
		Hcount=$(($Hcount+1))

	elif [ $x2 -eq 0 ]
	then
		Tcount=$(($Tcount-1))
	fi

	if [ $Hcount -eq 200 ]
	then
		echo "Gamble won the Game"
		break

	elif [ $Tcount -eq 1 ]
	then
		echo "Gambler Lose The Game and No More Money."
		break
	fi
	i=$(($i+1))
done
