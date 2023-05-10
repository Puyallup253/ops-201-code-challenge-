#!/bin/bash

# Script Name:                 code challenge 12
# Author:                       Robert Gillespie
# Date of latest revision:      5/9/2023
# Purpose: Write a Powershell script that returns the IPv4 address of the computer and Use Select-String cmdlet to only return the IPv4 address string and no other extraneous information

#Create a local file called network_report.txt that holds the contents of an ipconfig /all command.
ipconfig /all | Out-File "$Home\Documents\network_report.txt"


#Use Select-String to search network_report.txt and return only the IP version 4 address.
$ipconfigOutPut = Get-Content "$Home\Documents\network_report.txt"
$ipconfigOutPut | Select-String "IPv4 Address" | %{($_ -split ": ")[-1]}


#Remove the network_report.txt when you are finished searching it.
Remove-Item network_report.txt
