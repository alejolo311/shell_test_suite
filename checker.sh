#!/bin/bash

if [ "$1" == "" ]
then
	echo "write your Github username"
	read -n 20 -p "user: " USER
else
	USER=$1
fi

#find . -name "simple_shell" -exec rm -rf {} \;
[ -d simple_shell ] && rm -rf simple_shell

git clone "https://github.com/$USER/simple_shell.git"

cd simple_shell

#verify if gcc is the version 4.8.4

gcc -Wall -Werror -Wextra -pedantic *.c -o hsh
if [ $? == 1 ]
then
	echo "Compilation Error!"
fi

echo "Final revision successful!"
