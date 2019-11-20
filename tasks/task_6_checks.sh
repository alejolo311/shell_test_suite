#!/bin/bash

echo -e "\n################################ Task 6 ##############################\n"

# cases
grep -r " strtok(" *.c *.h > ../logs/strtoklog
grep -r "	strtok(" *.c *.h >> ../logs/strtoklog
if [ -s ../logs/strtoklog ]
then
    ../results/fail_check.sh "Strtok_function_is_used_in_the_program"
else
    ../results/success_check.sh "Strtok_function_is_dont_use_in_the_program"
    rm ../logs/strtoklog
fi
valgrind --error-exitcode=1 --leak-check=full 2> trash 1> trash echo "/bin/ls" | ./hsh 2> trash 1> trash
LEAK=$?
rm trash

if [ $LEAK == 0 ]
then
    ../results/success_check.sh "Valgrind_dont_show_any_errors_in_non_interactive_mode"
else
    ../results/fail_check.sh "Valgrind_show_memory_leaks"
fi
