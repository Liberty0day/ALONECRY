arch-chroot /mnt /bin/sed -i 's/HOOKS=(base udev autodetect modconf block filesystems keyboard fsck)/HOOKS=(base udev autodetect modconf block filesystems keyboard keymap lvm2 encrypt udev fsck)/g' /etc/mkinitcpio.conf
arch-chroot /mnt /bin/mkinitcpio -p linux-lts
#ERROOOOOR 
#  arch-chroot /mnt <<- EOF
#        /bin/sed -i 's/HOOKS=(base udev autodetect modconf block filesystems keyboard fsck)/HOOKS=(base udev autodetect modconf block filesystems keyboard keymap lvm2 encrypt udev fsck)/g' /etc/mkinitcpio.conf
#        /bin/mkinitcpio -p linux-lts
#EOF