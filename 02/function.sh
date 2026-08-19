 is_legal() {
	read -p "Age : " num

	if [[ $num -lt 18 ]]
	then 
		echo "Underage"
	else 
		echo "Legal"
	fi
}

is_legal
