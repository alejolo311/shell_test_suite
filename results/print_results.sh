#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

CHECK=`wc -l gcounter | grep -o "[0-9]\+"`
FAIL=`wc -l rcounter | grep -o "[0-9]\+"`
TOTAL="$(($CHECK + $FAIL))"

echo -e "\n######### Results ##########"
echo -e "### Number of tests: $TOTAL ####"

if [ -f gcounter ]
then
    if [ -f rcounter ]
    then
	echo -e "${GREEN}##### Passed: $CHECK tests. ####${NC}"
	echo -e "${RED}###### Fail: $FAIL tests. ######${NC}"
    fi
fi

echo -e "##### End of the test ######"

[ -f gcounter ] && rm gcounter
[ -f rcounter ] && rm rcounter
