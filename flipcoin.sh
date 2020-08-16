#!/bin/bash -x

echo "flip coin simulation"
IS_HEAD=1;
RANDOM_CHECK=$((RANDOM%2))

if [ $RANDOM_CHECK -eq $IS_HEAD ]
then
	echo " Flip coin is Heads "
else
	echo " Flip coin is Tails "
fi
