#! /bin/bash

#search for all sed statements
grep -rw "sed"
#search for all lines that start with the letter m
grep -r "^[mM]"
#search for all lines that contain three digit numbers
grep -rl "[0-9][0-9][0-9]"
#search for all echo statements with at least three words
grep -r "echo [[:alpha:]]* [[:alpha:]]* [[:alpha:]]*"
#search for all lines that would make a good password (use your knowledge of cybersecurity to decide what makes a good password).
grep -r "[[:alnum:]][[:punct:]][[:alnum:]][[:punct:]]\{12,16\}"