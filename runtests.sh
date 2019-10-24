#!/bin/sh

run_tests() {
    echo "Running tests.. (iteration $1)"
    racket tests/main.rkt
}

if [ $1 -eq '-1' ]; then
    run_tests
else
    iter=1
    while :; do
        clear
	run_tests $iter
        sleep 10
        iter=$(($iter + 1))
    done
fi;
