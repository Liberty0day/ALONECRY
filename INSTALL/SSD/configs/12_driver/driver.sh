  arch-chroot /mnt <<- EOF
    set -o errexit
    pacman -Sy --noconfirm cronie ntp
    systemctl enable cronie
    systemctl enable ntpd
    systemctl enable syslog-ng@default
    pacman -S --noconfirm tlp && systemctl enable tlp
    pacman -S --noconfirm xorg-{server,xinit,apps} xdg-user-dirs xf86-video-intel mesa lib32-mesa
    pacman -Sy --noconfirm intel-ucode
    pacman -S --noconfirm gst-libav gst-plugins-{base,good,bad,ugly}
    pacman -S --noconfirm xorg-fonts-type1 gsfonts sdl_ttf ttf-{dejavu,bitstream-vera,liberation} noto-fonts-{cjk,emoji,extra}
EOF

