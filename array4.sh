
#!/bin/bash -x
declare -p Integer
read -p "Enter 3 integers" a b c
read -p "Enter 3 Key values " key1 key2 key3

Integer[$key1]="$a"
Integer[$key2]="$b"
Integer[$key3]="$c"

sum=$((Integer[$key1]+Integer[$key2]+Integer[$key3]))
echo $sum

if [ $sum -eq 0 ]
then
        echo " sum of 3 Integers are equal to Zero"
else
 echo " sum of 3 Integers are not equal to Zero"
fi

