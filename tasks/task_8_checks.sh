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
fi
