#-----------------------------------------------------------------------------------------------------
# RAWWorks ScriptLib installer
# ----------------------------------------------------------------------------------------------------
# Author   : Wesly van Straten
 
#-----------------------------------------------------------------------------------------------------
# Desription
#-----------------------------------------------------------------------------------------------------
# This installer will download all RAWWorks modules to C:\RAWWorks-Modules

#-----------------------------------------------------------------------------------------------------
# Variables
#-----------------------------------------------------------------------------------------------------

$Greeting = "
            _________                 __      __             __
            \______  \_____ __  _  __/  \    /  \___________|  | __  ______
            |       _/\__  \\ \/ \/ /\   \/\/   /  _ \_  __ \  |/ / /  ___/
            |    |   \ / __ \\     /  \        (  <_> )  | \/    <  \___ \
            |____|_  /(____  /\/\_/    \__/\  / \____/|__|  |__|_ \/____  >
                   \/      \/               \/                   \/     \/
          "

$RAWWorks_Scriptroot = "C:\RAWWorks-Modules"

#-----------------------------------------------------------------------------------------------------
# Main Script
#-----------------------------------------------------------------------------------------------------

# Write Logo
Write-Host $Greeting -ForegroundColor White

# Write Start Message
Write-Host "`nStart creating or updating local RAWWorks Repository" -ForegroundColor Yellow

# Check if folder does not already exist, else create
Write-Host "`tCheck if local Repository folder exists" -ForegroundColor Cyan

If((Test-Path($RAWWorks_ScriptRoot)) -eq $False)
  {
    New-Item -ItemType Directory -Path $RAWWorks_Scriptroot -Force | Out-Null
    Write-Host "`t`tLocal Repository folder created, start download process" -ForegroundColor Cyan
  }
Else
  {
    Write-Host "`t`tLocal Repository folder already exists, start update process" -ForegroundColor Cyan
  }

# Check if updates are available if so, update local RAWWorks module repository

# Write Start Message
Write-Host "Finished creating or updating local RAWWorks Repository" -ForegroundColor Yellow
