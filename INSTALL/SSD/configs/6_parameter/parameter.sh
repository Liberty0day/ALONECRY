  arch-chroot /mnt <<- EOF
        set -o errexit
        echo nosecure > /etc/hostname
        echo '127.0.1.1 nosecure.local nosecure' >> /etc/hosts
        ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime
        sed -i 's/#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g' /etc/locale.gen
        locale-gen
        echo LANG="en_US.UTF-8" > /etc/locale.conf
        echo KEYMAP=us > /etc/vconsole.conf
        pacman -Sy --noconfirm networkmanager
        systemctl enable NetworkManager
        sed -i 's/#Color/Color/g' /etc/pacman.conf
        sed -i 's/#UseSyslog/UseSyslog/g' /etc/pacman.conf
        sed -i '93 s/^#//' /etc/pacman.conf
        sed -i '94 s/^#//' /etc/pacman.conf
        sed -i 's/#ForwardToSyslog=no/ForwardToSyslog=yes/g' /etc/systemd/journald.conf
EOF