
# Enable Virtual Machine Platform feature
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# Enable WSL feature
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

# Enable Microsoft-Hyper-V feature
dism.exe /online /enable-feature /featurename:Microsoft-Hyper-V /all /norestart

# Restart Win 10 Machine

# To set the WSL default version to 2.
wsl --set-default-version 2

# Installed linux distribution
# wsl --list --online
wsl --install -d Ubuntu-22.04

