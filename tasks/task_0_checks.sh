#!/bin/bash

echo -e "\n########## Task 0 ##########\n"

# cases

AUTHORS=./AUTHORS
if [[ -f "$AUTHORS" ]];
then
    	../results/success_check.sh "AUTHORS"
else
	../results/fail_check.sh "AUTHORS"
fi
README=./README.md
if [[ -f "$README" ]];
then
        ../results/success_check.sh "README" 
else
	../results/fail_check.sh "README"
fi
MAN=./man_1_simple_shell
if [[ -f "$MAN" ]];
then
	../results/success_check.sh "MAN"
else
	../results/fail_check.sh "MAN"
fi
