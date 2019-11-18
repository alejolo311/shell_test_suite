#!/bin/bash

echo -e "\n########## Task 2 ##########\n"

# cases
GITUSER=`git config user.name`
AUTHORS="../AUTHORS"
grep -r "$GITUSER" $AUTHORS > ../isaauthor

if [ -s ../isaauthor ]
then
        ../results/success_check.sh "AUTHOR_IS_GIT_USER"
else
    	../results/fail_check.sh "AUTHOR_IS_GIT_USER"
fi
[ -f ../isaauthor ] && rm ../isaauthor
