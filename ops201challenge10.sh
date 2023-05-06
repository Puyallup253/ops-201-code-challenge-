#!/bin/bash

# Script Name:                 code challenge 9
# Author:                       Robert Gillespie
# Date of latest revision:      5/5/2023
# Purpose:  Write a set of Powershell commands that fetch info about running processes, open processes, and close processes.                   

#Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
Get-Process | Sort-Object -Property CPU -Descending | Format-Table -AutoSize


#Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
Get-Process | Sort-Object -Property Id -Descending | Format-Table -AutoSize

#Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | Sort-Object -Property WS -Descending | Select-Object -First 5 | Format-Table -AutoSize

#Start a browser process (such as Google Chrome or MS Edge) and have it open https://owasp.org/www-project-top-ten/.
Start-Process MicrosoftEdge https://owasp.org/www-project-top-ten/

#Start the process Notepad ten times using a for loop.
for ($i=1; $i -le 10; $i++) {
    Start-Process notepad
}


#Close all instances of the Notepad.
Get-Process notepad | Stop-Process

#Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Google Chrome or MS Edge.
Stop-Process -Id 7452 -Force