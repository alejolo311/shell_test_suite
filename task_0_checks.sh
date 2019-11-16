#!/bin/bash

echo -e "\n########## Task 0 ##########\n"

# cases

AUTHORS=./AUTHORS
if [[ -f "$AUTHORS" ]];
then
    	../success_check.sh
else
	../fail_check.sh
fi
README=./README.md
if [[ -f "$README" ]];
then
        ../success_check.sh
else
	../fail_check.sh
fi
MAN=./man_1_simple_shell
if [[ -f "$MAN" ]];
then
	../success_check.sh
else
	../fail_check.sh
fi
echo -e "\n######## End task 0 ########\n"
