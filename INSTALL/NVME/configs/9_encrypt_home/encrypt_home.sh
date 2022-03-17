  arch-chroot /mnt <<- EOF
        set -o errexit
        mkdir -m 700 /etc/luks-keys
        dd if=/dev/random of=/etc/luks-keys/home bs=1 count=256 status=progress
        cryptsetup luksFormat -v -s 512 /dev/archlvm/home /etc/luks-keys/home
        cryptsetup -d /etc/luks-keys/home open /dev/archlvm/home home
        mkfs.xfs /dev/mapper/home
        mount /dev/mapper/home /home
EOF