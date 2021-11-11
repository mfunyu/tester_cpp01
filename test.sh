#!/bin/bash

# define
THICK="\033[1m"
CYAN="\033[1;36m"
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
RESET="\033[m"
PROMPT="${CYAN}$>${RESET}"

REPLACE="./replace"
TESTFILEDIR="./tester_cpp01/files"

FILES=`ls -1 ${TESTFILEDIR}`
FLIELST=(${FILES// / })


function test() {
	printf "$CYAN[ s1 = \"$1\", s2 = \"$2\" ]\n$RESET"
	for file in "${FLIELST[@]}"
	do
		printf "${PROMPT} ${REPLACE} $TESTFILEDIR/$file $1 $2\n${RESET}"
		$REPLACE $TESTFILEDIR/$file $1 $2
	done
	printf "\n"
}

test $1 $2
test a b

ls -l $TESTFILEDIR