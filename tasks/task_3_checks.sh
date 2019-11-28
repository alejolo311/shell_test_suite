#!/bin/bash

echo -e "\n################################ Task 3 ##############################\n"

# cases

CASE1="/bin/ls"
echo "/bin/ls" | /bin/sh > ../a
echo "/bin/ls" | ./hsh > ../b
diff ../a ../b > ../logs/logs_0
rm ../a
rm ../b
if [ -s ../logs/logs_0 ]
then
	../results/fail_check.sh "$CASE1"
else
	rm -rf ../logs/logs_0
	../results/success_check.sh "$CASE1"
fi


CASE2="/bin/l"
echo "./hsh: 1: /bin/l: not found" > ../a
echo "/bin/l" | ./hsh 2> ../b
diff ../a ../b > ../logs/logs_1
rm ../a
rm ../b
if [ -s ../logs/logs_1 ]
then
	../results/fail_check.sh "$CASE2"
else
	rm -rf ../logs/logs_1
	../results/success_check.sh "$CASE2"
fi

CASE3="When_the_command_doest_exist_the_STDERR_show_the_correct_err"
echo "./././hsh: 1: /bin/l: not found" > ../a
echo "/bin/l" | ./././hsh 2> ../b
diff ../a ../b > ../logs/logs_2
rm ../a
rm ../b
if [ -s ../logs/logs_2 ]
then
	../results/fail_check.sh "$CASE3"
else
	rm -rf ../logs/logs_2
	../results/success_check.sh "$CASE3"

fi

touch ../test_ls_2
echo -e "/bin/ls\n/bin/ls" > ../test_ls_2

cat ../test_ls_2 | /bin/sh > ../a
cat ../test_ls_2 | ./hsh > ../b
diff ../a ../b > ../logs/logs_3
rm ../a
rm ../b
if [ -s ../logs/logs_3 ]
then
	../results/fail_check.sh "when_try_to_use_a_double_ls_dont_works"
else
	rm -rf ../logs/logs_3
	rm -rf ../test_ls_2
	../results/success_check.sh "when_try_to_use_a_double_ls_all_works"

fi

CASE4="When_the_command_does_not_exist_the_STDERR_show_the_correct_output"
echo "127" > ../a
echo "ks" | ./hsh 2> /dev/null
echo $? > ../b
if ! diff -q ../a ../b &>/dev/null;
then
        echo "Expected output: " ;cat ../a
        echo "Result output: " ;cat ../b
	rm ../a
	rm ../b
        ../results/fail_check.sh "When_try_to_get_the_error_of_a_command_does_not_works"
else
        rm -rf ../logs/logs_3
        ../results/success_check.sh "When_try_to_get_the_error_of_a_command_works"
fi

CASE5="Exit_status_when_directory_doesnt_exits_echo_/bin/ls_asd"
echo "2" > ../a
echo "/bin/ls asdf" | ./hsh 2> /dev/null
echo $? > ../b
if ! diff ../a ../b
then
output=$(cat ../b)
        ../results/fail_check.sh "Expected exit status : 2"
	../results/fail_check.sh "Actual exit status: ${output}"
else
        ../results/success_check.sh "Exit_status_when_directory_doesnt_exits_echo_/bin/ls_asd"
fi
rm ../a
rm ../b
CASE7="Only_spaces_10000_spaces"
cat ../stdout_spaces | /bin/sh 2> ../a
cat ../stdout_spaces | ./hsh 2> ../b
diff ../a ../b > ../logs/logs_7
rm ../a
rm ../b
if [ -s ../logs/logs_7 ]
then
	../results/fail_check.sh "$CASE7"
else
	rm -rf ../logs/logs_0
	../results/success_check.sh "$CASE7"
fi