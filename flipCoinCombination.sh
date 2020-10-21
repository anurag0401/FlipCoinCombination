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

declare -A coin

coin[heads]=0
coin[tails]=0
a=0

Single (){
	if [ $1 -eq 0 ]
	then
		echo "Heads"
		((coin[heads]++))
	else
		echo "Tails"
		((coin[tails]++))
	fi
}

while [ $a -le 10 ]
do
	FlipCoin=$(( $RANDOM%2 ))
	Single $FlipCoin
	((a++))
done
echo "no. of times it was Head:" ${coin[heads]}
echo "no. of times it was Tail:" ${coin[tails]}

PofHeads=$(( (${coin[heads]}*100)/10 ))
PofTails=$(( (${coin[tails]}*100)/10 ))

echo "percentage of heads:" $PofHeads
echo "percentage of Tails:" $PofTails
