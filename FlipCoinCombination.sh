echo "Flip coin problems on head and Tails"
counter=0
totalHeads=0
totalTails=0
first_comb=0
second_comb=0
third_comb=0
fourth_comb=0


declare -A singlet
singlet[head]=" "
singlet[tail]=" "
singlet[hper]=0
singlet[tper]=0

declare -A double
double[first_comb]=" "
double[second_comb]=" "
double[third_comb]=" "
double[fourth_comb]=" "
double[firstper]=0
double[secondper]=0
double[thirdper]=0
double[fourthper]=0

read -p "enter the flip" flip
while [ $counter -lt $flip ]
do
	random=$((RANDOM%2))
	random2=$((RANDOM%2))
	if [ $random -eq 1 ]
	then
		singlet[head]="H"
		((totalHeads++))
	if [ $random -eq 1 ]
	then
		((first_comb++))
		double[first_comb]="HH"
	else
		((second_comb++))
		double[second_comb]="HT"
	fi
	else
		singlet[tail]="T"
		((totaltails++))
		 if [ $random2 -eq 1 ]
		then
			  ((third_comb++))
			   double[third_comb]="TH"
		else
			((fourth_comb++))
			double[fourth_comb]="TT"
		fi
	fi
	((counter++))
done

echo "singlet Combination" ${singlet[head]} ${singlet[Tail]}
singlet[hper]=$(echo $totalHeads $flip | awk '{print $1/$2}')
echo "percentage of head= " ${singlet[hper]}

singlet[tper]=$(echo $totalTails $flip | awk '{print $1/$2}')
echo "percentage of tail= " ${singlet[tper]}

echo "Doublet Combination" ${double[first_comb]} ${double[second_comb]} ${double[third_comb]} ${double[fourth_comb]}
double[first_per]=$(echo $first_comb $FLIP | awk '{print $1/$2}')
echo "Percentage of HH Combination ="${double[firstper]}

double[second_per]=$(echo $second_comb $FLIP | awk '{print $1/$2}')
echo "Percentage of HT Combination ="${double[secondper]}

double[third_per]=$(echo $third_comb $FLIP | awk '{print $1/$2}')
echo "Percentage of TH Combination ="${double[thirdper]}

double[fourth_per]=$(echo $fourth_comb $FLIP | awk '{print $1/$2}')
echo "Percentage of TT Combination ="${double[fourthper]}
