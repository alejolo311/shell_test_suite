#!/bin/bash

echo -e "\n########## Task 1 ##########\n"

# cases

betty-style *.c *.h > ../logs/betty-style.txt

if [ -s betty-style.txt ]
then
	../fail_check.sh
else
	../success_check.sh
	rm ../logs/betty-style.txt
fi



echo -e "\n######## End task 1 ########\n"
