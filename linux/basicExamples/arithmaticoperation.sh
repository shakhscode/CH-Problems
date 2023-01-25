#!/bin/bash

#take user inputs and choice  for 5 times

for i in {1..5};
do
  echo "Enter a and b:"
  read a b
  
  echo "Please choose an arithmetic operation:"
  echo "Enter 1 for +"
  echo "Enter 2 for -"
  echo "Enter 3 for +"
  echo "Enter 4 for /"

  read choice

  case $choice in
  
    1) result=$((a + b)) ;;
    2) result=$((a - b)) ;;
    3) result=$((a * b)) ;;
    4) result=$((a / b)) ;;

    *) echo "Invalid choice" ;;
  esac

  echo "The result is $result"
  
done



