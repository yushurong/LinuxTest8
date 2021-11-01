#!/bin/bash
read -a array
echo "${array[*]}"
a=$[ ${#array[*]} ]
for ((i=1;i<$a;i++))
do
	for((b=0;b<$a-i;b++))
do
if [ ${array[$b]} -gt ${array[$[b+1]]} ];then
  jap=${array[$b]}
  array[$b]=${array[$[$b+1]]}
  array[$[$b+1]]=$jap
fi
done
done
echo "${array[*]}"

