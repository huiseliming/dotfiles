#!/bin/bash -v

cd ~ || exit

snap install code --classic || exit

sudo apt install git clang cmake ninja-build gdb || exit

sudo apt install build-essential tar curl zip unzip || exit
git clone https://github.com/microsoft/vcpkg || exit
./vcpkg/bootstrap-vcpkg.sh || exit
echo "export VCPKG_ROOT=~/vcpkg" >> ~/.bashrc || exit

sudo apt install pkg-config autoconf autoconf-archive || exit # vcpkg boost 
sudo apt install libxinerama-dev libxcursor-dev xorg-dev libglu1-mesa-dev pkg-config || exit # vcpkg glfw3
