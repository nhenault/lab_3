#!/bin/bash
# Authors: Nathan Henault
# Date: 2/7/2020

# Problem 1 Code:

# 1. Get user inputs (A file name and a regular expression)
echo "Enter a file name:"
read file
echo "Enter a regular expression:"
read regex

# 2. Search entered file for entered regular expression
egrep $regex $file

# 3. Count the number of phone numbers in regex_practice.txt (form ###-###-####)
# Explanation: Any 3 numbers, -, any 3 numbers, -, any four numbers
echo "Number of phone numbers in regex_practice.txt:"
egrep -c "^[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$" regex_practice.txt

# 4.1. Count the number of emails in regex_practice.txt (form "string"@"string"."string")
# Explanation: At least one character, @, at least one character (% and + aren't in domains)
# , ., at least 2 characters (no single character domain types) (No spaces in email addresses)
echo "Number of emails in regex_practice.txt:"
egrep -c "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" regex_practice.txt

# 4.2. Pring a list of phone numbers in the 303 area code in regex_practice.txt (form 303-###-####)
# Explanation: 303-, any 3 numbers, -, any four numbers
echo "Phone numbers in the 303 area code: "
egrep -o "^303-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$" regex_practice.txt

# 4.3. Store a list of all the emails from geocities.com in regex_practice.txt in a file named email_results.txt
# Explanation: Any string ending in @geocities.com, store outputs in email_results.txt
rm email_results.txt	# Make sure the file doesn't exist so we are starting fresh
egrep "^.+@geocities.com$" regex_practice.txt >> email_results.txt