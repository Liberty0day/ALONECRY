pacman -Sy --noconfirm pacman-contrib
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
rankmirrors -n 3 /etc/pacman.d/mirrorlist.backup > /etc/pacman.d/mirrorlist
pacstrap /mnt base base-devel go lvm2 nmap jq curl cryptsetup xfsprogs linux-lts linux-lts-headers linux-firmware zip unzip p7zip mlocate vim alsa-utils syslog-ng mtools dosfstools lsb-release ntfs-3g exfat-utils bash-completion zsh zsh-completions git grub efibootmgr os-prober
genfstab -Up /mnt >> /mnt/etc/fstab
