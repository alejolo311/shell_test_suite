#!/bin/bash
#
# Usage: checker [git_user_name]
#

# Veify if the username was sent
if [ "$1" == "" ]
then
	echo "write your Github username"
	read -n 20 -p "user: " USER
else
	USER=$1
fi

## adding the counters to know how much checks success and how much checks fail

export CHECK
export FAIL

# Delete the previous project directory if exists

[ -d simple_shell ] && rm -rf simple_shell
[ -d logs ] && rm -rf logs
[ -f gcounter ] && rm gcounter
[ -f rcounter ] && rm rcounter

# clone the repo

git clone "https://github.com/$USER/simple_shell.git"

#change to the repo folder

cd simple_shell

# Compile with all the flags

gcc -Wall -Werror -Wextra -pedantic *.c -o hsh

# check if the compile finish in success

if [ $? == 1 ]
then
	echo "Compilation Error!"
	exit -1
fi

# Create a log folder to store the error logs

mkdir ../logs

# Call the sh file that contains the text cases

../task_0_checks.sh
../task_1_checks.sh
../task_3_checks.sh

# Delete the folder that was clone
cd ..
[ -d simple_shell ] && rm -rf simple_shell


CHECK=`wc -l gcounter | grep -o "[0-9]\+"`
FAIL=`wc -l rcounter | grep -o "[0-9]\+"`

[ -f gcounter ] && rm gcounter
[ -f rcounter ] && rm rcounter
# finish the script.
echo -e "\nRevision successful! $CHECK $FAIL"
