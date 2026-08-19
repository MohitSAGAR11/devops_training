# !/bin/bash

read -p "Enter girl : " girl
read -p "Enter love percentage : " percentage

if [[ $girl == "lola" ]];
then 
	echo "loyal"
elif [[ $percentage -ge 100 ]];
then
	echo "loyal ka pata nahi"
else 
	echo "not loyal"
fi
