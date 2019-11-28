#!/bin/bash

echo -e "\n################################ Task 8 ##############################\n"

# cases

CASE1="Exit"
echo "exit" | /bin/sh > ../a
echo "exit" | ./hsh > ../b
diff ../a ../b > ../logs/logs_8_exit
rm ../a
rm ../b
if [ -s ../logs/logs_8_exit ]
then
        ../results/fail_check.sh "$CASE1"
else
        rm -rf ../logs/logs_8_exit
        ../results/success_check.sh "$CASE1"
fi
