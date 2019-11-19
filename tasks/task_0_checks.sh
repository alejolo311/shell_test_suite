#!/bin/bash

echo -e "\n################################ Task 0 ##############################\n"

# cases

AUTHORS=./AUTHORS
if [[ -f "$AUTHORS" ]];
then
    	../results/success_check.sh "Authors_file_is_present"
else
	../results/fail_check.sh "Authors file is not present"
fi
README=./README.md
if [[ -f "$README" ]];
then
        ../results/success_check.sh "README.md_file_is_present" 
else
	../results/fail_check.sh "README.md_file_is_not_present"
fi
MAN=./man_1_simple_shell
if [[ -f "$MAN" ]];
then
	../results/success_check.sh "Man_page_file_is_present"
else
	../results/fail_check.sh "Man_page_file_is_not_present"
fi
