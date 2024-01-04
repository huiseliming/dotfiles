#!/bin/bash -v

snap install code --classic

cd ~ || exit
git clone https://github.com/microsoft/vcpkg || exit
sudo apt-get install build-essential tar curl zip unzip || exit
./vcpkg/bootstrap-vcpkg.sh || exit

echo "export VCPKG_ROOT=~/vcpkg" >> ~/.bashrc || exit

sudo apt install clang || exit
sudo apt install gdb || exit
sudo apt install cmake || exit
sudo apt install ninja-build || exit

sudo apt install pkg-config || exit # vcpkg boost 
sudo apt install autoconf autoconf-archive || exit # vcpkg boost
sudo apt install libxinerama-dev libxcursor-dev xorg-dev libglu1-mesa-dev pkg-config || exit # vcpkg glfw3


