#! /bin/bash -x 
head=1;
tail=0;
read -p "enter flipping times:" n;
head_cnt=0
tail_cnt=0
for (( i=0; i<=n; i++ ))
do
	flipcoincheck=$((RANDOM%2));
	if [ $flipcoincheck -eq $head ];
	then
		echo "Head"
		head_cnt=$(($head_cnt+1))
	elif [ $flipcoincheck -eq $tail ]
	then
		echo "Tail"
		tail_cnt=$(($tail_cnt+1))
	fi
done
echo "head=$head_cnt"
echo "tail=$tail_cnt"

