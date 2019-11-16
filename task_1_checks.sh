#!/bin/bash

echo -e "\n########## Task 1 ##########\n"

# cases

betty-style *.c *.h > ../logs/betty-style.txt

if [ -s ../logs/betty-style.txt ]
then
	../fail_check.sh
else
	../success_check.sh
	rm ../logs/betty-style.txt
fi

betty-doc *.c *.h 2> ../logs/betty-doc.txt 1>../logs/funcs.txt

if [ -s ../logs/betty-doc.txt ]
then
	../fail_check.sh
else
	../success_check.sh
	rm ../logs/betty-doc.txt
	rm ../logs/funcs.txt
fi

echo -e "\n######## End task 1 ########"
