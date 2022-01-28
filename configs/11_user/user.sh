USERNAME=liberty
PASSWORD=operator

useradd -mG wheel -s /usr/bin/zsh -c "Liberty" $USERNAME
echo -e "operator\noperator\n" | passwd liberty
echo -e "operator\noperator\n" | passwd root
sed -i '82 s/^#//' /mnt/etc/sudoers
mkdir /home/$USERNAME
chown liberty:liberty /home/liberty
chroot /mnt /bin/zsh
sed -i "/root ALL=(ALL) ALL/a ${USERNAME} ALL=(ALL) ALL" /etc/sudoers
