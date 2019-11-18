#!/bin/bash

RED='\033[0;31m'
NC='\033[0m'

CHECK_NAME=${1:-} 

echo -e "${RED}######## Check Fail ${CHECK_NAME} ########${NC}"
echo "Fail" >> ../rcounter
