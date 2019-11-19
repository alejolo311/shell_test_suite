#!/bin/bash


GREEN='\033[0;32m'
NC='\033[0m'

CHECK_NAME=${1:-}

echo -e "${GREEN}###### ${CHECK_NAME} #######${NC}"
echo "check" >> ../gcounter
