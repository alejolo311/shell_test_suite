#!/bin/bash

echo -e "\n########## Task 2 ##########\n"

# cases
GITUSER=`git config user.name`
AUTHORS="../AUTHORS"
grep -r "$GITUSER" $AUTHORS > ../isaauthor

if [ -s ../isaauthor ]
then
        ../results/success_check.sh
else
    	../results/fail_check.sh
fi
[ -f ../isaauthor ] && rm ../isaauthor
