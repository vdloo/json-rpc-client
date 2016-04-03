#!/bin/sh

run_tests() {
    echo "Running tests.."
    racket tests/main.rkt
}

if [ $1 -eq '-1' ]; then
    run_tests
else
    while :; do
        clear
	run_tests
        sleep 2
    done
fi;
