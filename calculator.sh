#!/usr/bin/env bash

# ===============================================================================
#
#          FILE: Calculator.sh
#
#         USAGE: Perform arithmentic calculations
#
#   DESCRIPTION: This performs most common mathematical operations
#
#       VERSION: 1.0.0
#       OPTIONS: NA
#          BUGS: NA
#         NOTES: NA
#        AUTHOR: Hosea Getusi  
#       CREATED: 21/11/2018 (DD/MM/YYYY)
#      REVISION: NA
#     COPYRIGHT: (c) 2018
# ============================================================================== 
 
echo "Developed by Hosea Getusi"
echo "Copyright: (c) 2018"
echo ""
echo "NOTE:"
echo -----
echo "You are allowed to use non-integer values (decimal numbers) e.g 1.0, -1, -0.1 etc. with all operators"
echo "For the 7th operator (square root) simply press ENTER when prompted to Enter Secondnumber"

echo "" ##new line

#echo operators
echo ----------------
echo "OPERATOR LIST:"

#define operator variables
a=1.Addition
b=2.Subtraction
c=3.Multiplication
d=4.Division
e=5.Modulus
f=6.Exponentiation
g=7.SquareRoot

#display operators
echo ----------------
echo $a
echo $b
echo $c
echo $d
echo $e
echo $f
echo $g
echo -----------------
echo "" ###new line

#select operator for execution
echo "CHOOSE YOUR OPERATOR:"
read Operator
echo "Enter Firstnumber"
read Firstnumber
echo "Enter Secondnumber"
read Secondnumber

#conditional statements
 if [ $Operator == 1 ]; then
 	    echo "ANSWER:"
        echo $Firstnumber + $Secondnumber | node -p
    elif [ $Operator == 2 ]; then
    	echo "ANSWER:"
        echo $Firstnumber - $Secondnumber | node -p
    elif [ $Operator == 3 ]; then
    	echo "ANSWER:"
        echo $Firstnumber \* $Secondnumber | node -p
    elif [ $Operator == 4 ]; then
    	echo "ANSWER:"
        echo $Firstnumber / $Secondnumber | node -p
    elif [ $Operator == 5 ]; then
        echo "ANSWER:"
        echo $Firstnumber % $Secondnumber | node -p
    elif [ $Operator == 6 ]; then
    	echo "ANSWER:"
        echo $Firstnumber ^ $Secondnumber | bc -l
    elif [ $Operator == 7 ]; then
    	echo "ANSWER:"
    	echo "sqrt($Firstnumber)" |  bc -l         #########using bc command

    else
    	echo "Choose a valid operator"

    fi
