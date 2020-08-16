#!/bin/bash 

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

if [ $HEAD_CNT -gt $TAIL_CNT ]
   then
      HEAD_WINS=$(($HEAD_CNT-$TAIL_CNT))
      echo " Heads wins Tails  by $HEAD_WINS times  "

   elif [ $HEAD_CNT  -lt $TAIL_CNT ]
   then
      TAIL_WINS=$(($TAIL_CNT-$HEAD_CNT))
      echo "Tails wins Heads by $TAIL_WINS times"

   else
      echo " Tie "
   fi

if [ $HEAD_CNT  -eq  $TAIL_CNT ]
   then
      while [ $valid ]
      	RANDOM_CHECK=$((RANDOM%2))
		do
     		if [ $RANDOM_CHECK -eq $IS_HEAD ]
         then
         	HEAD_CNT=$(($HEAD_CNT+1))
         else
    			TAIL_CNT=$(($TAIL_CNT+1))
         fi
				HEAD_WINS=$(($HEAD_CNT-$TAIL_CNT))
            TAIL_WINS=$(($TAIL_CNT-$HEAD_CNT))

         if [[ $HEAD_CNT -eq 2 || $TAIL_CNT -eq 2 ]]
         then
         	break
         fi
		done
	fi
