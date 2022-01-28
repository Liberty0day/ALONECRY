  arch-chroot /mnt <<- EOF
    set -o errexit
    useradd -mG wheel -s /usr/bin/zsh -c "Liberty" liberty
    passwd liberty
    passwd root
    sed -i '82 s/^#//' /mnt/etc/sudoers
EOF