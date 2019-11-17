#!/bin/bash

echo -e "\n########## Task 4 ##########\n"

# cases
grep -r " getline(" *.c *.h > ../logs/getlinelog
grep -r "	getline(" *.c *.h >> ../logs/getlinelog
if [ -s ../logs/getlinelog ]
then
    ../results/fail_check.sh
else
    ../results/success_check.sh
    rm ../logs/getlinelog
fi

grep -r "static" *.c > ../logs/staticlog
if [ -s ../logs/staticlog ]
then
    ../results/success_check.sh
    rm ../logs/staticlog
else
    echo "you dont use a static variables" > ../logs/staticlog
    ../results/fail_check.sh
fi
valgrind --error-exitcode=1 --leak-check=full ./hsh 2> trash 1> trash

LEAK=$?
rm trash

if [ $LEAK == 0 ]
then
    ../results/success_check.sh
else
    ../results/fail_check.sh
fi
