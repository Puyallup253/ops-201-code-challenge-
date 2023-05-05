#!/bin/bash

# Script Name:                 code challenge 9
# Author:                       Robert Gillespie
# Date of latest revision:      5/4/2023
# Purpose:                    Write a set of Powershell commands that fetch useful System event logs. Include language appropriate syntax and file extensions.  

# Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.

   Get-EventLog -LogName System -After (Get-date).AddDays(-1) | Out-File "$HOME\Desktop\last_24.txt"

#Output all “error” type events from the System event log to a file on your desktop named errors.txt.
 Get-Eventlog -LogName System -Entrytype Error | Out-File "$HOME\Desktop\errors.txt"

# Print to the screen all events with ID of 16 from the System event log.
Get-EventLog -LogName System -InstanceID 16

# Print to the screen the most recent 20 entries from the System event log.’
Get-EventLog -LogName System -Newest 20

# Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text).
Get-EventLog -LogName System -Newest 500 | format-table * -wrap

# Get-EventLog= Get all detail of all event logs on a computer (system)
#-LogName System- Filters everything but the system logs
#-After= Gets all events from a selected start date moving forward
#Get date= Gets current date
#.AddDays=Adding a day to current date
#Out-File= Writes to a file in a selected location
#Entrytype= Prints all logs with selected parameters example (Error, Warning, Critical)
#InstanceID=Prints all logs with selected InstanceID
#Newest=Prints most recent logs
#Format-table * -wrap=Customizes table. *= wild card represents all fields on table. -wrap= wraps text so all visable. 