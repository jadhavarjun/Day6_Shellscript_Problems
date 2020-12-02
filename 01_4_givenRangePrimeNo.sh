#!/bin/bash

function primeNoCheck()
{
	num=$1
	flag=0
	x=2
	temp=`expr $num/2`

	for (( i=$x;i<=$temp;i++ ))
	do
		if [ $(($num%$i)) -eq 0 ]
		then
			flag=1
		fi
	done
	if [ $flag -eq 0 ]
	then
		echo "$num"
	fi

}

read -p "Enter First Value : " a
read -p "Enter Second Vale :" b

echo "Prime No Between $a & $b : "
for (( num=$a;num<=$b;num++ ))
do
	primeNoCheck $num
done
