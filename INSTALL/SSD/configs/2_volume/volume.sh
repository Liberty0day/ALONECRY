pvcreate /dev/sda2
vgcreate archlvm /dev/sda2
lvcreate -L 10G -n root archlvm
lvcreate -L 2G -n swap archlvm
lvcreate -L 1G -n tmp archlvm
lvcreate -l 100%FREE -n home archlvm

