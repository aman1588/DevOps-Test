#!/bin/bash

# Simple calculator in Bash

echo -e "\nChoose an operation:"
echo -e "[a] addition"
echo -e "[b] subtraction"
echo -e "[c] multiplication"
echo -e "[d] division"

# Function to read two numbers
function num() {
    read -p "Enter first number: " a
    read -p "Enter second number: " b
}

# Reading user choice
read -p "Enter your choice (a/b/c/d): " operation

# Performing the operation
case $operation in
    [aA])
        num
        sum=$((a + b))
        echo "Result: $a + $b = $sum"
        ;;
    [bB])
        num
        diff=$((a - b))
        echo "Result: $a - $b = $diff"
        ;;

# Task for singapore user is to add multiplication and division functionality.

[cC])
        num
        prod=$((a * b))
        echo "Result: $a * $b = $prod"
        ;;
    [dD])
        num
        if [[ $b -eq 0 ]]; then
            echo "Error: Division by zero is not allowed."
        else
            div=$((a / b))
            echo "Result: $a / $b = $div"
        fi
        ;;
    *)
        echo "Invalid choice. Please select a, b, c, or d."
        ;;
esac
