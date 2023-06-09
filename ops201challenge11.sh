#!/bin/bash

# Script Name:                 code challenge 11
# Author:                       Robert Gillespie
# Date of latest revision:      5/8/2023
# Purpose:  Write a Powershell script that automates the configuration of a new Windows 10 endpoint.

#Enable File and Printer Sharing
Get-NetFirewallRule -DisplayGroup "File and Printer Sharing" | Select-Object Name, DisplayName, Enabled

#Allow ICMP traffic
New-NetFirewallRule -DisplayName "Allow ICMPv4-In" -Direction Inbound -Protocol ICMPv4


#Enable Remote management
Enable-PSRemoting

#Remove bloatware
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))

#Enable Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All


#Disable SMBv1, an insecure protocol
Disable-WindowsOptionalFeature -Online -FeatureName smb1protocol