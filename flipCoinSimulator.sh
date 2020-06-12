#!/bin/bash
echo "Welcome. Let's flip Coin."

Heads=0;
Tails=1;
flip=$(($RANDOM%2))
if [[ $flip -eq $Heads ]]; then
	echo "It's Heads"
else
	echo "It's Tails"
fi