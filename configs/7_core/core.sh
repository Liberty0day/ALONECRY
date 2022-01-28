  arch-chroot /mnt <<- EOF
        set -o errexit
        sed -i 's/HOOKS=(base udev autodetect modconf block filesystems keyboard fsck)/HOOKS=(base udev autodetect modconf block filesystems keyboard keymap lvm2 encrypt udev fsck)/g' /etc/mkinitcpio.conf
        mkinitcpio -p linux-lts
EOF