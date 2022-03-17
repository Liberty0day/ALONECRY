arch-chroot /mnt <<- EOF
/bin/useradd -mG wheel -s /usr/bin/zsh -c "Liberty" liberty
/bin/echo -e "operator\noperator\n" | passwd liberty
/bin/echo -e "operator\noperator\n" | passwd root
/bin/sed -i 's/# %wheel/  %wheel/' /etc/sudoers
/bin/mkdir /home/liberty
/bin/chown liberty:liberty /home/liberty
/bin/chroot /mnt /bin/zsh
/bin/sed -i "/root ALL=(ALL) ALL/a liberty ALL=(ALL) ALL" /etc/sudoers
EOF
