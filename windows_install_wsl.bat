@echo off
:: BatchGotAdmin
::-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
::--------------------------------------

# Enable Virtual Machine Platform feature
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# Enable WSL feature
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

# Enable Microsoft-Hyper-V feature
# dism.exe /online /enable-feature /featurename:Microsoft-Hyper-V /all /norestart

# Restart Win 10 Machine

# To set the WSL default version to 2.
# wsl --set-default-version 2

# Installed linux distribution
# wsl --list --online
# wsl --install -d Ubuntu-22.04

# netsh interface portproxy
# netsh interface ip add address "vEthernet (WSL)" 172.172.172.1 255.255.255.0
# netsh interface portproxy add v4tov4 listenport=1111 listenaddress=0.0.0.0 connectport=1111 connectaddress=172.172.172.172
# netsh interface portproxy show v4tov4

# exec on Ubuntu-22.04
#sudo ip addr add 172.172.172.172/24 broadcast 172.172.172.255 dev eth0 label eth0:1;

