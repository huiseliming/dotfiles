python3 -m pip install html5lib
brew install cmake ninja bison flex gperf node

mkdir build
cd build
../Src/configure -prefix /Users/huiseliming/Qt/6.6.3/macos_arm64 -debug-and-release -opensource -webengine-proprietary-codecs
#cmake --install . 不会部署debug
ninja install 




