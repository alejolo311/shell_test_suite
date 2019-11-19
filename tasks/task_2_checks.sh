#!/bin/bash

echo -e "\n################################ Task 2 ##############################\n"

# cases
GITUSER=`git config user.name`
AUTHORS="../AUTHORS"
grep -r "$GITUSER" $AUTHORS > ../isaauthor

if [ -s ../isaauthor ]
then
        ../results/success_check.sh "The_actual_user_is_a_author_of_the_test_suite"
else
    	../results/fail_check.sh "The_actual_user_is_not_a_author_of_the_test_suite"
fi
[ -f ../isaauthor ] && rm ../isaauthor
