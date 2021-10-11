#!/bin/bash -x
declare -a number
i=0
for((n=0;n<=100;n++))
do
  if [ $(($n%11)) -eq 0 ]
  then
    number[$i]=$n
          i=$(($i+1))
  fi
done

echo "The Repeated digits of given numbers are  ${number[@]}"

for i in ${!number[@]}
        do
                echo "$i=${number[$i]}"

        done

