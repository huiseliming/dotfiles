@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

rem fix WARNING: Not setting tab completion: Profile file does not exist at 'C:\Users\huiseliming\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1'.
rem @'
rem # Chocolatey profile
rem $ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
rem if (Test-Path($ChocolateyProfile)) {
rem   Import-Module "$ChocolateyProfile"
rem }
rem '@ | Add-Content -Path $profile

choco install git vscode
