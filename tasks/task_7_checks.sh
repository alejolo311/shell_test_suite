#!/bin/bash

echo -e "\n################################ Task 7 ##############################\n"

# cases

CASE1="ls_output_is_the_correct"
echo "ls" | /bin/sh > ../a
echo "ls" | ./hsh > ../b
diff ../a ../b > ../logs/logs_7_0
rm ../a
rm ../b
if [ -s ../logs/logs_7_0 ]
then
	../results/fail_check.sh "$CASE1"
else
	rm -rf ../logs/logs_7_0
	../results/success_check.sh "$CASE1"
fi

CASE4="ls_output_with_arguments_is_the_correct"
echo "ls -l" | /bin/sh > ../a
echo "ls -l" | ./hsh > ../b
diff ../a ../b > ../logs/logs_7_4
rm ../a
rm ../b
if [ -s ../logs/logs_7_4 ]
then
	../results/fail_check.sh "$CASE4"
else
	rm -rf ../logs/logs_7_4
	../results/success_check.sh "$CASE4"
fi
CASE2="l"
echo "./hsh: 1: l: not found" > ../a
echo "l" | ./hsh 2> ../b
diff ../a ../b > ../logs/logs_7_1
rm ../a
rm ../b
if [ -s ../logs/logs_7_1 ]
then
	../results/fail_check.sh "$CASE2"
else
	rm -rf ../logs/logs_7_1
	../results/success_check.sh "$CASE2"
fi

CASE3="When_the_command_doest_exist_the_STDERR_show_the_correct_err"
echo "./././hsh: 1: l: not found" > ../a
echo "l" | ./././hsh 2> ../b
diff ../a ../b > ../logs/logs_7_2
rm ../a
rm ../b
if [ -s ../logs/logs_2 ]
then
	../results/fail_check.sh "$CASE3"
else
	rm -rf ../logs/logs_7_2
	../results/success_check.sh "$CASE3"

fi

touch ../test_ls_2
echo -e "ls\npwd" > ../test_ls_2

cat ../test_ls_2 | /bin/sh > ../a
cat ../test_ls_2 | ./hsh > ../b
diff ../a ../b > ../logs/logs_7_3
rm ../a
rm ../b
if [ -s ../logs/logs_7_3 ]
then
	../results/fail_check.sh "when_try_to_use_a_two_commands_dont_works"
else
	rm -rf ../logs/logs_7_3
	rm -rf ../test_ls_2
	../results/success_check.sh "when_try_to_use_two_commands_all_works"
fi
