
#!/bin/bash
read -p "please enter number: " n

echo "Prime Factors of $n = "

for i in $( seq `expr $n / 2` )
do
	if [ `expr $n % $i` -eq 0 ]
	then
		echo "$i"
	fi
done
