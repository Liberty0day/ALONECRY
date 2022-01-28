USERNAME=liberty
PASSWORD=operator
mkdir /home/$USERNAME
chown liberty:liberty /home/liberty
useradd -mG wheel -s /usr/bin/zsh -c "Liberty" $USERNAME
echo $PASSWORD |passwd liberty
echo $PASSWORD |passwd root
sed -i '82 s/^#//' /mnt/etc/sudoers
chroot /mnt /bin/zsh

