#!/bin/bash

echo -e "\n################################ Task 8 ##############################\n"

# cases


CASE1="exit_output_is_correct"
echo -e "/bin/ls /tm\nexit" | /bin/sh 2> ../a
echo -e "/bin/ls /tm\nexit" | ./hsh 2> ../b
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

CASE3="rm ..."
echo "rm ..." | ./hsh 2> /dev/null
echo $? > ../a
echo "rm ..." | /bin/sh 2> /dev/null
echo $? > ../b
if ! diff ../a ../b
then 
	../results/fail_check.sh "$CASE3"
else
	../results/success_check.sh "$CASE3"
fi
rm ../a
rm ../b
