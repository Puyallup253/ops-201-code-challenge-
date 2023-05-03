#!/bin/bash

# Script Name:                 code challenge 7
# Author:                       Robert Gillespie
# Date of latest revision:      5/2/2023
# Purpose:                     To learn about coding functions
# CPU
# Product
# Vendor
# Physical ID
# Bus info
# Width

# Declaration of variables
cpu_items=("product" "vendor" "physical id" "bus info" "width")
ram_items=("description" "physical id" "size")
display_items=("description" "product" "vendor" "physical id" "bus info" "width" "clock" "capabilities" "configuration" "resources")
network_items=("description" "product" "vendor" "physical id" "bus info" "logical name" "version" "serial" "size" "capacity" "width" "clock" "capabilities" "configuration" "resources")
# Declaration of functions
function print_cpu_specs {
    echo "# CPU info"
    for item in "${cpu_items[@]}"
    do
    # echo "$item"
    lshw -C cpu | grep -i "$item"
    done
}
function print_memory_specs {
    echo "# Memory info"
    for item in "${ram_items[@]}"
    do
    # echo "$item"
    lshw -C memory | grep -i "$item"
    done
}
function print_display_specs {
    echo "# Display info"
    for item in "${display_items[@]}"
    do
    # echo "$item"
    lshw -C display | grep -i "$item"
    done
}
function print_network_specs {
    echo "# Network info"
    for item in "${network_items[@]}"
    do
    # echo "$item"
    lshw -C network | grep -i "$item"
    done
}
# Main 
print_cpu_specs
print_memory_specs
print_display_specs
print_network_specs