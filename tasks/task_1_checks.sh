#!/bin/bash

echo -e "\n########## Task 1 ##########\n"

# cases

betty-style *.c *.h > ../logs/betty-style.txt

if [ -s ../logs/betty-style.txt ]
then
	../results/fail_check.sh "BETTY_STYLE"
else
	../results/success_check.sh "BETTY_STYLE"
	rm ../logs/betty-style.txt
fi

betty-doc *.c *.h 2> ../logs/betty-doc.txt 1>../logs/funcs.txt

if [ -s ../logs/betty-doc.txt ]
then
	../results/fail_check.sh "BETTY_DOC"
else
	../results/success_check.sh "BETTY_DOC"
	rm ../logs/betty-doc.txt
	rm ../logs/funcs.txt
fi
