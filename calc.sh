#!/bin/bash
T=$1
shift
sum=$1
prod=$1
max=$1
min=$1

shift

for num in $@
do
  sum=$(($sum+$num))
  prod=$(($prod*$num))
  if [ $num -gt $max ]; then
    max=$(($num))
  fi
  if [ $min -gt $num ]; then
    min=$(($num))
  fi
done

case $T in
  'S') echo $sum;;
  'P') echo $prod;;
  'M') echo $max;;
  'm') echo $min;;
  '') echo "Du satte ikke inn noe";;
  ' ') echo "Du satte ikke inn noe";;
esac
