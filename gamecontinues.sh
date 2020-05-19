#! /bin/bash 
head=1;
tail=0;
head_cnt=0
tail_cnt=0
for (( i=1; i<=22; i++ ))
do
        flipcoincheck=$((RANDOM%2));
        if [ $flipcoincheck -eq $head ];
        then
                head_cnt=$(( $head_cnt + 1 ))
        elif [ $flipcoincheck -eq $tail ]
        then
                tail_cnt=$(( $tail_cnt + 1 ))
        fi
done
echo "head_count=$head_cnt"
echo "tail_count=$tail_cnt"
a=$(($head_cnt-$tail_cnt))
b=$(($tail_cnt-$head_cnt))
if [ $head_cnt -eq $tail_cnt ]
then
        echo "Tie"
        while [ $a -lt 2 -a $b -lt 2 ]
	do
		flipcoincheck=$((RANDOM%2));

        	if [ $flipcoincheck -eq $head ];
        	then
                	head_cnt=$(( $head_cnt + 1 ))
        	elif [ $flipcoincheck -eq $tail ]
        	then
                	tail_cnt=$(( $tail_cnt + 1 ))
        	fi
                a=$(($head_cnt-$tail_cnt))
                b=$(($tail_cnt-$head_cnt))
                if [ $head_cnt -lt $tail_cnt ]
                then
        
                        echo "Tail wins"
                        echo "tail won by:$b"
                elif [ $head_cnt -gt $tail_cnt ]
                then
                        echo "Head wins"
                        echo "head won by:$a"
                fi


	done
elif [ $head_cnt -lt $tail_cnt ]
then
        
        echo "Tail wins"
        echo "tail won by:$b"
elif [ $head_cnt -gt $tail_cnt ]
then
        echo "Head wins"
        echo "head won by:$a"
fi

