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



while [ $valid ]
   RANDOM_CHECK=$((RANDOM%2))
do
 	if [ $RANDOM_CHECK -eq $IS_HEAD ]
   then
      	HEAD_CNT=$(( $HEAD_CNT+1 ))

	else
      	TAIL_CNT=$(( $TAIL_CNT+1 ))
   fi
		if [[ $HEAD_CNT -eq 21 || $TAIL_CNT -eq 21 ]]
   	then
      	break
   	fi

done
      echo " Heads wins "$HEAD_CNT" times "
      echo " Tails wins "$TAIL_CNT" times "
