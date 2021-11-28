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

pacman -S stalonetray alsa-utils nm-applet terminus-font xfce4-terminal firefox pipewire pipewire-alsa pipewire-pulse pavucontrol

# if bluetooth
#   pacman -S bluez blueman bluez-utils
#   systemctl enable bluetooth.service

cat > ~/.xinitrc << EOF
(stalonetray) &
(nm-applet) &
dwmstatus &
xset r rate 250 40 &
setxkbmap br &
exec dwm
EOF

cat > ~/.config/gtk-3.0/settings.ini << EOF
[Settings]
gtk-theme-name = Adwaita
gtk-application-prefer-dark-theme = true
EOF
