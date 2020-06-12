#!/bin/bash
echo "Welcome. Let's flip Coin."

flipping=42;
a=0;
Heads=0;
Tails=1;
count_heads=0;
count_tails=0;

while [[ $a -le flipping ]]; do
flip=$(($RANDOM%2))
	if [[ $flip -eq $Heads ]]; then
		echo "It's Heads"
		count_heads=$(($count_heads+1))
	else
		echo "It's Tails"
		count_tails=$(($count_tails+1))
	fi
	a=$(($a+1))
done
echo "Heads landed: " $count_heads
echo "Tails landed: " $count_tails

if [[ $count_heads -eq $count_tails ]]; then
	echo "It's a tie"
elif [[ $count_heads -le $count_tails ]]; then
	majority_1=$(($count_tails-$count_heads))
	echo "Tails lead by" $majority_1
else
	majority_2=$(($count_heads-$count_tails))
	echo "Heads lead by" $majority_2

fi