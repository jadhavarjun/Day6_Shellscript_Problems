
#!/bin/bash -x

function d2f()
{
	temp=$((($c*9/5)+32))
	echo "Given Temprature in Degree Farhenite is $temp F"
}

function f2d()
{
	temp=$((($f-32)*5/9))
	echo "Given Temprature in Degree Celsius in $temp C"
}

echo -ne "1.Degree Celcius To Degree Farhenite \n2.Degree Farhenite To Degree Celsius \nEnter The Your Choice : "

read choice

case $choice in
1)
	echo -ne "Enter Degree Celsius Temprature : "
	read c
	d2f $c
	;;
2)
	echo -ne "Enter Degree Farhenite Temprature : "
	read f
	f2d $f
	;;
esac
