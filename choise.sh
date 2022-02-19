#!/bin/bash

# Declare an array of string with type
declare -a StringArray=("Linux Mint ?" \
"Fedora ?" \
"Red Hat Linux ?" \
"Ubuntu ?" \
"Debian ?" \
"Windows xp ?" \
"Windows vista ?" \
"Windows 7 ?" \
"Windows 8 ?" \
"Windows 8.1 ?" \
"Windows 10 ?" \
"Windows 11 ?" \
)

# Iterate the string array using for loop
firstquestion=$(( $RANDOM % 12 ))


echo "The firstquestion is ${StringArray[$firstquestion]}"

secondquestion=$firstquestion

while [ "$secondquestion" = "$firstquestion" ]
do
  secondquestion=$(( $RANDOM % 12 ))
done

echo "The secondquestion is ${StringArray[$secondquestion]}"

thirdquestion=$firstquestion

while [ "$thirdquestion" = "$firstquestion" ] || [ "$thirdquestion" = "$secondquestion" ]
do
  thirdquestion=$(( $RANDOM % 12 ))
done

echo "The thridquestion is ${StringArray[$thirdquestion]}"

filename="src/index.php"

# Take the search string

search1="question1"
search2="question2"
search3="question3"

sed -i "s/$search1/${StringArray[$firstquestion]}/" $filename
sed -i "s/$search2/${StringArray[$secondquestion]}/" $filename
sed -i "s/$search3/${StringArray[$thirdquestion]}/" $filename

