# Start of script and function Create-Projects
Function Create-Projects {
<#
.SYNOPSIS
Simple non-interactive function named Create-Projects that create Project folders and Phase subfolders in C:\Projects
.DESCRIPTION
This function accepts four parameters $ProjectStart, $ProjectEnd, $PhaseStart and $PhaseEnd. 
In addition there is also option to change $Project and $Phase folder parameter if needed.
.EXAMPLE
Create-Projects -ProjectStart 1 -ProjectEnd 3 -PhaseStart 1 -PhaseEnd 2
.EXAMPLE
Create-Projects -$Project WSA  -$Phase M- -ProjectStart 1 -ProjectEnd 7 -PhaseStart 1 -PhaseEnd 5
.NOTES
This script is part of SoftUni Windows System Administration - june 2023 Module-7 Homework
If the function is executed without parameters there are some default values.
Source file: Create-Projects.ps1
.LINK
https://github.com/arm0r3d/Create-Project-Folders-PSscript.git
#>
[cmdletbinding()]
Param (
[string]$Project = "Project",
[string]$Phase = "Phase",
[int]$ProjectStart = 1,
[int]$ProjectEnd = 3,
[int]$PhaseStart = 1,
[int]$PhaseEnd = 2
)
#
# Preparing loop code with some test examples. Do not enable next 3 lines!
# New-Item -Path C:\Projects -Type Directory -ErrorAction SilentlyContinue
# $ProjectStart..$ProjectEnd | Where {New-Item -Path "C:\Projects\$Project$_" -Type Directory -ErrorAction SilentlyContinue} | ForEach {"$Project$_"} 
# $PhaseStart..$PhaseEnd |  Where {New-Item -Path "C:\Projects\$Project$_\$Phase$_" -Type Directory -ErrorAction SilentlyContinue} | ForEach {"$Phase$_"}
#
Write-Verbose "Creating $Project folder strucure from $Project$ProjectStart to $Project$ProjectEnd" 
Write-Verbose "Creating $Phase folder substrucure from $Phase$PhaseStart to $Phase$PhaseEnd"
#
For ($i = $ProjectStart; $i -LE $ProjectEnd; $i++) 
{
$PhaseStart..$PhaseEnd |  Where {New-Item -Path "C:\Projects\$Project$i\$Phase$_" -Type Directory -Force -ErrorAction SilentlyContinue} | ForEach {"$Phase$_" }
}
Write-Verbose "All folders and subfolder was created successfully!"
}
#
# Trigger script and use it
# . .\Create-Projects.ps1
# Get-Help Create-Projects
# Get-Help Create-Projects -Examples
# Get-Help Create-Projects -Full
# Create-Projects -ProjectStart 1 -ProjectEnd 3 -PhaseStart 1 -PhaseEnd 2 -Verbose
# Create-Projects -Project WSA -Phase M- -ProjectStart 1 -ProjectEnd 7 -PhaseStart 1 -PhaseEnd 5 -Verbose
# End of script file