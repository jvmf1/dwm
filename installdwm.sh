pacman -S stalonetray alsa-utils network-manager-applet terminus-font xfce4-terminal firefox pipewire pipewire-alsa pipewire-pulse pavucontrol gnome-disk-utility thunar thunar-volman mpv xorg-server xorg-xinit libx11

git clone https://github.com/jvmf1/dwm
cd dwm
sudo make install
cd ..

git clone https://git.suckless.org/dmenu
cd dmenu
sudo make install
cd ..

git clone https://github.com/jvmf1/dwmstatus
cd dwmstatus
sudo make install
cd ..


# if bluetooth
#   pacman -S bluez blueman bluez-utils
#   systemctl enable bluetooth.service

echo "(stalonetray) &
(nm-applet) &
#(blueman-applet) &
dwmstatus &
xset r rate 250 40 &
setxkbmap br &
exec dwm" > $HOME/.xinitrc
