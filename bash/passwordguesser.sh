#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data
# TASK 2: Improve it by rewriting it to use the if command
# TASK 3: Improve it by giving them 3 tries to get it right before failing (test 3 times but only if necessary)
#           *** Do not use the exit command
referenceString="password"
x=3
while [ $x -gt 0 ]
do
  echo "please enter a password guess! you have $x guesses left"
  read myString
  let x=$x-1
  if [ "$myString" = $referenceString ]
  then
    echo "you guessed the password!"
  else
    echo "the password eludes you..."
  fi
done
