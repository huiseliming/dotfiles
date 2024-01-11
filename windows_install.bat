:: install choco
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco install git tortoisegit ninja vscode
git config --global user.email "huiseliming@qq.com"
git config --global user.name "huiseliming"
choco install cmake --installargs="'ADD_CMAKE_TO_PATH=System' 'DESKTOP_SHORTCUT_REQUESTED=1'"
:: 改回win10的右键菜单
reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
