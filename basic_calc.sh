#!/bin/bash

#Addition function
addition() {
    result=$((num1 + num2))
    echo "Result: $num1 + $num2 = $result"
}

#Subtraction function
subtraction() {
    result=$((num1 - num2))
    echo "Result: $num1 - $num2 = $result"
}

#Multiplication function
multiplication() {
    result=$((num1 * num2))
    echo "Result: $num1 * $num2 = $result"
}

#Division function, this will be tricky since we need to address what would happen if user inputs a 0 as the denominator so we need 
#to take care of this first.
division() {
    if [ $num2 -eq 0 ]; then
        echo "Error: Division by zero is not allowed."
    else
        result=$((num1 / num2))
        echo "Result: $num1 / $num2 = $result"
    fi
}

# Prompt the user to enter two integers
echo "Enter the first integer:"
read num1
echo "Enter the second integer:"
read num2

# Prompt the user to choose an operation
echo "Choose an operation (+, -, *, /):"
read operation

# Perform the chosen operation using conditionals
if [ "$operation" == "+" ]; then
    addition
elif [ "$operation" == "-" ]; then
    subtraction
elif [ "$operation" == "*" ]; then
    multiplication
elif [ "$operation" == "/" ]; then
    division
else
    echo "Error: Invalid operation selected. Please choose +, -, *, or /."
fi
