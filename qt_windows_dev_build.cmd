
choco install python
#pip3 install html5lib
choco install winflexbison
choco install gperf
# choco install nodejs 

COPY C:\ProgramData\chocolatey\bin\win_bison.exe C:\ProgramData\chocolatey\bin\bison.exe
COPY C:\ProgramData\chocolatey\bin\win_flex.exe C:\ProgramData\chocolatey\bin\flex.exe

mkdir C:\Qt\build_6.6.2
cd C:\Qt\build_6.6.2
C:\Qt\qt-everywhere-src-6.6.2\configure.bat -prefix C:\Qt\6.6.2\dev_msvc_x64 -webengine-proprietary-codecs -opensource
cmake --install .
