#!/bin/bash
PURPLE='\033[0;35m'
tail -f ~/chdb
text=$(tail -f ~/chdb)
echo -e ${PURPLE}$text${NC}
