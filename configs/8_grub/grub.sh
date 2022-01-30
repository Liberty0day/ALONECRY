mount -t efivarfs efivarfs /sys/firmware/efi/efivars
arch-chroot /mnt        sed -i '/GRUB_CMDLINE_LINUX=/d' /etc/default/grub
arch-chroot /mnt        sed -i 's/#GRUB_ENABLE_CRYPTODISK=y/GRUB_ENABLE_CRYPTODISK=y/' /etc/default/grub
arch-chroot /mnt        /bin/echo GRUB_CMDLINE_LINUX=\"cryptdevice=UUID=$(blkid -s UUID -o value /dev/mapper/archlvm-root):root root=/dev/mapper/root\" >> /mnt/etc/default/grub
arch-chroot /mnt        grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=arch_grub --recheck
arch-chroot /mnt        grub-mkconfig -o /boot/grub/grub.cfg
