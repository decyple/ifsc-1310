#!/bin/bash

git status

echo -e "\n\n\nAre you okay with the status? Press 'y' to continue or 'n' to exit"
read -n 1 k <&1

if [[ $k = y ]] ; then
	printf "\nProceeding...\n"

	git add --all

	echo "Enter the description of changes in this commit: "  
	read changes

	git commit -m "$changes"

	echo -e "\n\n\nAre you sure you want to push to GitHub? Press 'y' to continue or 'n' to exit"
	read -n 1 k <&1

	echo -e "\n"

	if [[ $k = y ]] ; then
        	git push
	else
        	printf "\n\nExiting now!\n\n\n"
	fi

else
	printf "\n\nExiting now!\n\n\n"
fi
