#!/bin/bash -v

brew install --cask google-chrome
brew install --cask visual-studio-code

cd ~
git clone https://github.com/microsoft/vcpkg
./vcpkg/bootstrap-vcpkg.sh

git config --global user.email "huiseliming@qq.com"
git config --global user.name "huiseliming"
