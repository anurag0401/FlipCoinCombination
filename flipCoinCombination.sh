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

declare  -A  coin;
coin[HHH]=0;
coin[HTT]=0;
coin[HTH]=0;
coin[HHT]=0;
coin[TTT]=0;
coin[THH]=0;
coin[THT]=0;
coin[TTH]=0;
count=0;

TripleDictionary (){
        if [ $1 -eq 0 ]
        then
                echo "HHH"
                ((coin[HHH]++))
        elif [ $1 -eq 1 ]
        then
                echo "HTT"
                ((coin[HTT]++))
        elif [ $1 -eq 2 ]
        then
                echo "HTH"
                ((coin[HTH]++))
        elif [ $1 -eq 3 ]
        then
                echo "HHT"
                ((coin[HTT]++))
        elif [ $1 -eq 4 ]
        then
                echo "TTT"
                ((coin[TTT]++))

	elif [ $1 -eq 5 ]
        then
                echo "THH"
                ((coin[THH]++))
        elif [ $1 -eq 6 ]
        then
                echo "THT"
                ((coin[THT]++))

	else
                echo "TTH"
                ((coin[TTH]++))
        fi
}

while [ $count -lt 10 ]
do
        Coin=$(( $RANDOM%8 ));
        TripleDictionary $Coin;
        ((count++))
done

echo "number of times HHH combination:" ${coin[HHH]}
echo "number of times HTT combination:" ${coin[HTT]}
echo "number of times HTH combination:" ${coin[HTH]}
echo "number of times HHT combination:" ${coin[HHT]}
echo "number of times TTT combination:" ${coin[TTT]}
echo "number of times THH combination:" ${coin[THH]}
echo "number of times THT combination:" ${coin[THT]}
echo "number of times TTH combination:" ${coin[TTH]}

percentageof_HHH=$(( (${coin[HHH]}*100)/10 ))
percentageof_HTT=$(( (${coin[HTT]}*100)/10 ))
percentageof_HTH=$(( (${coin[HTH]}*100)/10 ))
percentageof_HHT=$(( (${coin[HHT]}*100)/10 ))
percentageof_TTT=$(( (${coin[TTT]}*100)/10 ))
percentageof_THH=$(( (${coin[THH]}*100)/10 ))
percentageof_THT=$(( (${coin[THT]}*100)/10 ))
percentageof_TTH=$(( (${coin[TTH]}*100)/10 ))

echo "percentage of HHH:" $percentageof_HHH
echo "percentage of HTT:" $percentageof_HTT
echo "percentage of HTH:" $percentageof_HTH
echo "percentage of HHT:" $percentageof_HHT
echo "percentage of TTT:" $percentageof_TTT
echo "percentage of THH:" $percentageof_THH
echo "percentage of THT:" $percentageof_THT
echo "percentage of TTH:" $percentageof_TTH
