echo "Flip coin problems on head and Tails"
counter=0
totalHeads=0
totalTails=0


declare -A singlet
singlet[head]=" "
singlet[tail]=" "
singlet[hper]=0
singlet[tper]=0

read -p "enter the flip" flip
while [ $counter -lt $flip ]
do
	random=$((RANDOM%2))
	if [ $random -lt 1 ]
	then
		singlet[head]="H"
		((totalHeads++))
	else
		singlet[tail]="T"
		((totalTails++))
	fi
	((counter++))
done

echo "singlet Combination" ${singlet[head]} ${singlet[Tail]}
singlet[hper]=$(echo $totalHeads $flip | awk '{print $1/$2}')
echo "percentage of head= " ${singlet[hper]}

singlet[tper]=$(echo $totalTails $flip | awk '{print $1/$2}')
echo "percentage of tail= " ${singlet[tper]}

