# Create-Project-Folders-PSscript
Powershell non-interactive function named <b>Create-Projects</b> that create folders and subfolders in C:\Projects with parameters that can be changed.
#
This powershell script is a part of SoftUni Windows System Administration - june 2023 Module-7 Homework Task-2.
#
This function accepts four parameters $ProjectStart, $ProjectEnd, $PhaseStart and $PhaseEnd. 
In addition there is also option to change $Project and $Phase folder parameter if needed.
#
Trigger script and use it: 
. .\Create-Projects.ps1
#
Get-Help Create-Projects
#
Get-Help Create-Projects -Examples
#
Get-Help Create-Projects -Full
#
Example1:
Create-Projects -ProjectStart 1 -ProjectEnd 3 -PhaseStart 1 -PhaseEnd 2 -Verbose
#
Example2:
Create-Projects -Project WSA -Phase M- -ProjectStart 1 -ProjectEnd 7 -PhaseStart 1 -PhaseEnd 5 -Verbose
# Author: Panayot Petrov
