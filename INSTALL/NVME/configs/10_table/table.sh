
#cat configs/0_files/fstab > /mnt/etc/fstab
#cat configs/0_files/crypttab > /mnt/etc/crypttab
chmod +x configs/0_files/fstab
chmod +x configs/0_files/crypttab
#chmod +x configs/10_table/table.sh

cp configs/0_files/fstab /mnt
cp configs/0_files/crypttab /mnt
  arch-chroot /mnt <<- EOF
/bin/cat fstab >>  /etc/fstab
/bin/cat crypttab >>  /etc/crypttab
EOF