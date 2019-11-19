#!/bin/bash

echo -e "\n########## Task 5  #########\n"

# cases

CASE1="/bin/ls -l"
echo "/bin/ls -l" | /bin/sh > ../a
echo "/bin/ls -l" | ./hsh > ../b
diff ../a ../b > ../logs/logs_5_0
rm ../a
rm ../b
if [ -s ../logs/logs_5_0 ]
then
	../results/fail_check.sh "$CASE1"
else
	rm -rf ../logs/logs_5_1
	../results/success_check.sh "$CASE1"
fi


CASE2="/bin/l -l"
echo "./hsh: 1: /bin/l: not found" > ../a
echo "/bin/l -l" | ./hsh 2> ../b
diff ../a ../b > ../logs/logs_5_1
rm ../a
rm ../b
if [ -s ../logs/logs_5_1 ]
then
	../results/fail_check.sh "$CASE2"
else
	rm -rf ../logs/logs_5_1
	../results/success_check.sh "$CASE2"
fi

echo "./././hsh: 1: /bin/l: not found" > ../a
echo "/bin/l -l" | ./././hsh 2> ../b
diff ../a ../b > ../logs/logs_5_2
rm ../a
rm ../b
if [ -s ../logs/logs_5_2 ]
then
	../results/fail_check.sh "/bin/l -l | ./././hsh"
else
	rm -rf ../logs/logs_5_2
	../results/success_check.sh "/bin/l -l | ./././hsh"

fi

touch ../test_ls_2
echo -e "/bin/ls -la\n/bin/ls -la" > ../test_ls_2

cat ../test_ls_2 | /bin/sh > ../a
cat ../test_ls_2 | ./hsh > ../b
diff ../a ../b > ../logs/logs_5_3
rm ../a
rm ../b
if [ -s ../logs/logs_5_3 ]
then
	../results/fail_check.sh "cat test_ls_2 | ./hsh"
else
	rm -rf ../logs/logs_5_3
	rm -rf ../test_ls_2
	../results/success_check.sh "cat test_ls_2 | ./hsh"

fi
