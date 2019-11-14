#!/bin/bash

echo "write your Github username"

read -n 20 -p "user: " USER


git clone "https://github.com/$USER/simple_shell.git"

cd simple_shell

#verify if gcc is the version 4.8.4

gcc -Wall -Werror -Wextra -pedantic *.c -o hsh
