#!/bin/bash

GREEN='\033[00;32m'
WHITE_BOLD='\033[01;37m'

echo -e "${WHITE_BOLD}Enter test type
	\n\râº Press ${GREEN}a${WHITE_BOLD} to run all tests.
	\râº Press ${GREEN}e${WHITE_BOLD} to run e2e tests.
	\râº Press ${GREEN}i${WHITE_BOLD} to run integration tests.
	\râº Press ${GREEN}u${WHITE_BOLD} to run unit tests.
	\n\rEnter a choice:
";

read target;

if [ "$target" = "a" ]; then
	echo "ð Running all tests"
	npm run test
else
	if [ "$target" = "e" ]; then
		echo "ð Running e2e tests"
		npm run test:e2e
	elif [ "$target" = "i" ]; then
		echo "ð Running integration tests"
		npm run test:integration
	elif [ "$target" = "u" ]; then
		echo "ð Running unit tests"
		npm run test:unit
	fi
fi