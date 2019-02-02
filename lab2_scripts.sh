#!/bin/bash
# Authors : Lauren Strand
# Date: 1/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
#1. Accept a regular expression and file name from the user with a prompt
echo "Enter a regular expression: "
read regEx
echo "Enter a file name: "
read fileIn

#2: Feed the user's regEx into grep and run into the users chosen file
grep -E $regEx $fileIn

#3: 1) Count # of phone #s in regex_practice.txt
grep -c "[0-9]{3}-[0-9]{3}-[0-9]{4}$" regex_practice.txt
#3: 2) Count # of emails in regex_practice.txt
grep -c "[A-Za-z0-9]*@[A-Za-z]*.[A-za-z]{3}" regex_practice.txt
#3: 3) List all phone #s in the 303 area code and store results in txt
grep -o "303-[0-9]{3}-[0-9]{4}$" regex_practice.txt >phone_results.txt
#3: 4) List all of the emails from geocities.com and store the results in txt
grep -o "^[A-Za-z0-9]+@geocites.com$" >email_results.txt
#3: 5) List all of the lines that match a command-line reg ex an store in txt
echo "Enter a regular expression: "
read  regExIn
$(grep -E $regExIn regex_practice.txt >command_results.txt)

