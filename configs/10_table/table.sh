set -o errexit
cat configs/0_files/fstab > /mnt/etc/fstab
cat configs/0_files/crypttab > /mnt/etc/crypttab
