#!/bin/bash

#########################################################
# Author: Simon Israily
# Date: 02/08/2020
# Lab 3
#
# Desc.. 
# The goal of this script is to get practice using regex
# and bash.
#
#  
#########################################################

printf "Enter a file name: "
read fileName
printf "Enter a regex command: "
read pattern


printf "File name ....... $fileName \n"
printf "Regex Command ... $pattern \n\n"

grep $pattern $fileName

# Displays the number of lines contaning a phone number
amtPhoneNumbers=`egrep -c "[0-9]{3}-[0-9]{3}-[0-9]{4}" regex_practice.txt`
printf "Number of phone numbers found in the file: $amtPhoneNumbers\n"

# Displays the number of emails found in the file
emailCount=`egrep -c "[a-zA-Z0-9.-]*@[a-zA-Z0-9.-]*" regex_practice.txt`
printf "Number of emails found: $emailCount\n\n"

# Displays all phone numbers starting with the area code 303
printf "Below are the phone numbers starting with area code 303: \n"
egrep -o "303-[0-9]{3}-[0-9]{4}" regex_practice.txt

# Saves all emails ending with geocities.com to the file email_results.txt 
printf "\nSaving emails with domain addresses ending in geocities.com to email_results.txt ...\n"
grep -o "[a-zA-Z0-9.-]*@geocities.com" regex_practice.txt >> email_results.txt
printf "... save complete\n"

