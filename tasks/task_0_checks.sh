#!/bin/bash

echo -e "\n########## Task 0 ##########\n"

# cases

AUTHORS=./AUTHORS
if [[ -f "$AUTHORS" ]];
then
    	../results/success_check.sh
else
	../results/fail_check.sh
fi
README=./README.md
if [[ -f "$README" ]];
then
        ../results/success_check.sh
else
	../results/fail_check.sh
fi
MAN=./man_1_simple_shell
if [[ -f "$MAN" ]];
then
	../results/success_check.sh
else
	../results/fail_check.sh
fi
