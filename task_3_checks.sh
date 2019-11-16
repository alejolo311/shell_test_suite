#!/bin/bash

echo -e "\n########## Task 3  ##########\n"

# cases
echo "/bin/ls" | /bin/sh > ../a
echo "/bin/ls" | ./hsh > ../b
diff ../a ../b > ../logs/logs_0
rm ../a
rm ../b
export RES=$(find .. -name logs_0 -empty -printf "0")
if [ a$RES == a0 ]
then
	rm -rf ../logs/logs_0
	../success_check.sh
else
	../fail_check.sh
fi

echo "./hsh: 1: /bin/l: not found" > ../a
echo "/bin/l" | ./hsh  > ../b
diff ../a ../b > ../logs/logs_1
rm ../a
rm ../b
export RES=$(find .. -name logs_1 -empty -printf "0")
if [ a$RES == a0 ]
then
	rm -rf ../logs/logs_1
	../success_check.sh
else    
	../fail_check.sh
fi





echo -e "\n######## End task 3 ########\n"
