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

$i xorg xbacklight xbindkeys xinput xorg-dev
$i intel-microcode
$i linux-headers-$(uname -r) build-essential make ninja-build fuse automake pkg-config cmake autoconf git python3-pip g++ libglvnd-dev
$i libncurses-dev flex bison openssl libssl-dev dkms libelf-dev pkg-config liblz4-tool bc rsync debhelper dwarves
$i curl wget
$i unzip tar gzip
$i pulseaudio pamixer
$i alsa-utils alsa-firmware-loaders alsa-oss alsa-tools alsamixergui volumeicon-alsa pacman paprefs pavumeter pulseaudio-utils sound-icons
$i lame libdvdnav4 libfaac0 libmad0 libmp3lame0 libquicktime2 libstdc++5 libxvidcore4 twolame vorbis-tools x264
$i gstreamer1.0-x gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-alsa gstreamer1.0-pulseaudio gstreamer1.0-tools
$i chromium-l10n fonts-noto fonts-noto-cjk fonts-noto-extra fonts-noto-color-emoji
#opcional phototonic for gpicview
$i kitty dunst libnotify-bin flameshot lxappearance nitrogen phototonic python3.11-venv ripgrep lxpolkit thunar zathura htop ntfs-3g network-manager-gnome jq fzf

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
