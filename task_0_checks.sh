#!/bin/bash

echo -e "\nTask 0\n"
#ls
echo -e "case 0: /bin/ls\n"
echo "/bin/ls" | /bin/sh > ../a
echo "/bin/ls" | ./hsh > ../b
diff ../a ../b > ../logs_0
rm ../a
rm ../b
export RES=$(find .. -name logs_0 -empty -printf "0")
if [ a$RES == a0 ]
then
	rm ../logs_0
	echo -e "0 - Check Success\n"
else
	echo -e "0 - Check Fail - check the logs file for the explanation\n"
fi

