
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

# set static WSL address
netsh interface ip add address "vEthernet (WSL)" 172.16.160.1 255.255.255.0
# exec on Ubuntu-22.04
#sudo ip addr add 172.16.160.11/24 broadcast 172.16.160.255 dev eth0 label eth0:1;

