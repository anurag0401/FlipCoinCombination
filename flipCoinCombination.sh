#!/bin/bash

echo "Flip the Coin"

#uc-1 Display Head/Tail as Winner

coin=$(( $RANDOM%2 ))

if [ $coin -eq 0 ]
then
	echo "Heads win"
else
	echo "Tails win"
fi
