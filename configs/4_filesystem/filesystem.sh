#mkfs.xfs /dev/mapper/root
mkfs.ext4 /dev/mapper/root

mount /dev/mapper/root /mnt
#mkfs.fat -F32 /dev/sda1
mkfs.ext2 /dev/sda1
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot

