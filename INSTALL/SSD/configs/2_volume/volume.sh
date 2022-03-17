pvcreate /dev/sdb2
vgcreate archlvm /dev/sdb2
lvcreate -L 42G -n root archlvm
lvcreate -L 2G -n swap archlvm
lvcreate -L 30G -n tmp archlvm
lvcreate -l 100%FREE -n home archlvm

