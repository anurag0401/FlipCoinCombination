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

declare  -A  coin;
coin[HH]=0;
coin[TT]=0;
coin[HT]=0;
coin[TH]=0;
count=0;

DoubleDictionary (){
        if [ $1 -eq 0 ]
        then
                echo "HH"
                ((coin[HH]++))
        elif [ $1 -eq 1 ]
	then
		echo "TT"
		((coin[TT]++))
	elif [ $1 -eq 2 ]
	then
		echo "HT"
		((coin[HT]++))
	else
                echo "TH"
                ((coin[TH]++))
        fi
}

while [ $count -lt 10 ]
do
        Coin=$(( $RANDOM%4 ));
        DoubleDictionary $Coin;
        ((count++))
done

echo "number of times HH combination:" ${coin[HH]}
echo "number of times TT combination:" ${coin[TT]}
echo "number of times HT combination:" ${coin[HT]}
echo "number of times TH combination:" ${coin[TH]}

percentageof_HH=$(( (${coin[HH]}*100)/10 ))
percentageof_TT=$(( (${coin[TT]}*100)/10 ))
percentageof_HT=$(( (${coin[HT]}*100)/10 ))
percentageof_TH=$(( (${coin[TH]}*100)/10 ))

echo "percentage of HH:" $percentageof_HH
echo "percentage of TT:" $percentageof_TT
echo "percentage of HT:" $percentageof_HT
echo "percentage of TH:" $percentageof_TH
