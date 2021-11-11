#!/bin/bash

# define
THICK="\033[1m"
CYAN="\033[1;36m"
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
RESET="\033[m"
PROMPT="${CYAN}$>${RESET}"

EXEC="./karenFilter"

function test() {
	printf "$PROMPT$EXEC $1\n$RESET"
	$EXEC $1
	printf "\n"
}

test DEBUG
test INFO
test WARNING
test ERROR
test KO
test ""