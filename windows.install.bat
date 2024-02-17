:: 安装 chocolatey
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
:: 安装c/c++编译工具 配置git
choco install git tortoisegit ninja vscode
choco install cmake --installargs 'ADD_CMAKE_TO_PATH=System'
:: 配置git
git config --global user.email "huiseliming@qq.com"
git config --global user.name "huiseliming"
:: 安装Flow-Launcher
choco install Flow-Launcher
:: 改回win10的右键菜单
reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
:: BIOS时间为UTC
Reg add HKLM\SYSTEM\CurrentControlSet\Control\TimeZoneInformation /v RealTimeIsUniversal /t REG_DWORD /d 1
