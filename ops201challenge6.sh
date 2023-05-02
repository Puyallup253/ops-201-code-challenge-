#!/bin/bash

# Script Name:                 Challenge 6
# Author:                       Robert Gillespie
# Date of latest revision:      5/1/2023
# Purpose:                     To learn how create a script that tells if a folder exist or does not. 

# Declaration of variables


 # Declaration of functions
    
robdirArr=(cat.txt dog.txt)

    # Main
    for VARIABLE in "${robdirArr[@]}"
    do
    
    # using [ expression ] syntax and in place 
    # of File.txt you can write your file name 
    if [[ -f cat.txt ]] | [[ -f dog.txt ]]  
    then
    # if file exist the it will be printed 

    echo "File does exist"
    else

    # is it is not exist then it will be printed
    touch dog.txt 
    touch cat.txt
    fi
    done


    
# End