#python3 -m pip install html5lib
pip3 install html5lib
brew install cmake ninja bison flex gperf node

sudo xcode-select -s /Applications/Xcode.app/Contents/Developer

mkdir build
cd build
../qt-everywhere-src-6.6.3/configure -prefix /Users/huiseliming/Qt/6.6.3/macOS -debug-and-release -opensource -webengine-proprietary-codecs
#cmake --install . 不会部署debug
ninja install 




