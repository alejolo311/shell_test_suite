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

# Delete the previous project directory if exists

[ -d simple_shell ] && rm -rf simple_shell

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

[ -d ../logs ] && rm -rf ../logs
mkdir ../logs

# Call the sh file that contains the text cases

../task_0_checks.sh
../task_1_checks.sh
../task_3_checks.sh

# Delete the folder that was clone
cd ..
[ -d simple_shell ] && rm -rf simple_shell

# finish the script.
echo -e "\nRevision successful!"
