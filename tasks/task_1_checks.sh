#!/bin/bash

echo -e "\n################################ Task 1 ##############################\n"

# cases

betty-style *.c *.h > ../logs/betty-style.txt

if [ -s ../logs/betty-style.txt ]
then
	../results/fail_check.sh "Betty_style_fail"
else
	../results/success_check.sh "BettBetty_style_passed_all_checks"
	rm ../logs/betty-style.txt
fi

betty-doc *.c *.h 2> ../logs/betty-doc.txt 1>../logs/funcs.txt

if [ -s ../logs/betty-doc.txt ]
then
	../results/fail_check.sh "Betty_doc_fail"
else
	../results/success_check.sh "Betty_doc_passed_all_checks"
	rm ../logs/betty-doc.txt
	rm ../logs/funcs.txt
fi
