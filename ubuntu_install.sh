
#!/bin/bash -v

sudo add-apt-repository universe || exit
sudo apt install ibus-libpinyin || exit
sudo apt install gnome-tweaks -y || exit
sudo apt install gnome-shell-extension-manager -y || exit


