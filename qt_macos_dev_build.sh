python3 -m pip install html5lib
brew install bison
brew install flex
brew install gperf
brew install node


mkdir build
cd build
../Src/configure -prefix /Users/huiseliming/Qt/6.5.3/universal -debug-and-release -opensource -webengine-proprietary-codecs
#cmake --install . 不会部署debug
ninja install 




