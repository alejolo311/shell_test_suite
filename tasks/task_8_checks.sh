#!/bin/bash

echo -e "\n################################ Task 8 ##############################\n"

# cases


CASE1="exit_output_is_correct"
echo "/bin/ls /tm\nexit" | /bin/sh 2> ../a
echo "/bin/ls /tm\nexit" | ./hsh 2> ../b
diff ../a ../b > ../logs/logs_8_0
rm ../a
rm ../b
if [ -s ../logs/logs_8_0 ]
then
	../results/fail_check.sh "$CASE1"
else
	rm -rf ../logs/logs_8_0
	../results/success_check.sh "$CASE1"

CASE2="Exit"
echo "exit" | /bin/sh > ../a
echo "exit" | ./hsh > ../b
diff ../a ../b > ../logs/logs_8_exit
rm ../a
rm ../b
if [ -s ../logs/logs_8_exit ]
then
        ../results/fail_check.sh "$CASE2"
else
        rm -rf ../logs/logs_8_exit
        ../results/success_check.sh "$CASE2"
fi
