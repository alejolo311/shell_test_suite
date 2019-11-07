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

git clone "https://github.com/$USER/simple_shell.git"

cd simple_shell

#verify if gcc is the version 4.8.4
gcc -Wall -Werror -Wextra -pedantic *.c -o hsh
if [ $? == 1 ]
then
	echo "Compilation Error!"
fi

# Final message
echo
echo "Final revision successful!"
