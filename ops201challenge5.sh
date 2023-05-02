#!/bin/bash

# Script:                       
# Author:                       
# Date of latest revision:      
# Purpose:                      

# Basic while loop
# while true Creates infinite loop 
while true
do
    # Displays running processes
    ps aux 
    # Asks the user for a PID

    echo "Please provide PID number of the process you want to end"
    # store user input in a variable
    read ans
    # Kills the process with user input PID
    kill $ans
done

# End