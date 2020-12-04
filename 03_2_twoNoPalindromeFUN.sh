
#!/bin/bash

function palindrome()
{
	a=$1
	b=$2
	rev=""
	temp=$a
	sd=0

	while [ $temp -gt 0 ]
	do
		sd=$(( $temp%10 ))
		temp=$(( $temp/10 ))
		rev=$( echo ${rev}${sd} )
	done

	if [ $b -eq $rev ]
	then
		echo "Number $a and $b are Palindrome"
	else
		echo "Number $a and $b are not Palindrome"
	fi
}

read -p "Enter 1st Number : " a
read -p "Enter 2nd Number : " b

palindrome $a $b
