#!/bin/bash

i="sudo apt install -y"
i1="sudo apt install --no-install-recommends -y"
s="sudo"


echo "|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯|"
echo "|Workpace Installer|"
echo "|__________________|"
echo ""
echo ""
sleep 2s
echo "Introduzca contraseña para continuar"
sudo -k
if sudo true; then
	clear
	echo "Iniciando Instalacion..."
	sleep 2s
else
	clear
	echo "Debe introduccir contraseña para continuar"
	exit 1
fi

$i xorg 
$i intel-microcode nvidia-driver
$i linux-headers-$(uname -r) build-essential make ninja-build fuse automake pkg-config cmake autoconf git python3-pip g++
$i libncurses-dev flex bison openssl libssl-dev dkms libelf-dev pkg-config liblz4-tool bc rsync debhelper
$i curl wget
$i unzip tar gzip
$i pulseaudio pavucontrol 
$i chromium-l10n fonts-noto fonts-noto-cjk fonts-noto-extra fonts-noto-color-emoji
$i kitty dunst libnotify-bin flameshot lxapparence feh ristretto tumbler gedit python3.11-venv ripgrep lxpolkit pcmanfm zathura htop

#openbox
#$i openbox obconf 

# i3 gaps
#$i meson dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev i3status

#cd
#git clone https://github.com/Airblader/i3 i3-gaps
#cd i3-gaps
#mkdir -p build && cd build
#meson --prefix /usr/local
#ninja
#$s ninja install
