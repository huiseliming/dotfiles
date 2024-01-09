
# 
cd c:/
git clone https://github.com/microsoft/vcpkg
./vcpkg/bootstrap-vcpkg.bat
[Environment]::SetEnvironmentVariable("VCPKG_ROOT", "C:\vcpkg", [System.EnvironmentVariableTarget]::User)
