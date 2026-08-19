# !/bin/bash

# for loop

# for ((i=1 ; i<=5 ; i++));
# do 
# 	echo "Number : $i"
# done


# << task 
# 1 is argument 1 which is folder name
# 2 is start range
# 3 is end range
# task

# echo "Argument 1 = $1"
# echo "Argument 2 = $2"
# echo "Argument 3 = $3"
# for ((i=$2; i<=$3; i++))
# do
#     echo "Creating: $1$i"
#     mkdir "$1$i"
# done



num=0

while [[ $num -le 5 && $num -ge 1]]
do 
	echo "Number is : $num"
	((num++))
done