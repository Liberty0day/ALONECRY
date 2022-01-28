  arch-chroot /mnt <<- EOF
        set -o errexit
        sed -i '/GRUB_CMDLINE_LINUX=/d' /etc/default/grub
        sed -i 's/#GRUB_ENABLE_CRYPTODISK=y/GRUB_ENABLE_CRYPTODISK=y/' /etc/default/grub
        echo GRUB_CMDLINE_LINUX=\"cryptdevice=UUID=$(blkid -s UUID -o value /dev/mapper/archlvm-root):root root=/dev/mapper/root\" >> /etc/default/grub
        grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=arch_grub --recheck
        grub-mkconfig -o /boot/grub/grub.cfg
EOF