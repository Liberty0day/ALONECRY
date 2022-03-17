#!/bin/bash
# cd configs
# install.sh
#sh ~/configs/1_partition/partition.sh
#sh ~/configs/2_volume/volume.sh
#sh ~/configs/3_encrypt/encrypt.sh
#sh ~/configs/4_filesystem/filesystem.sh
#sh ~/configs/5_system/system.sh
#sh ~/configs/6_parameter/parameter.sh
#sh ~/configs/7_core/core.sh
#sh ~/configs/8_grub/grub.sh
#sh ~/configs/9_encrypt_home/encrypt_home.sh
#sh ~/configs/10_table/table.sh
#sh ~/configs/11_user/user.sh
#sh ~/configs/12_driver/driver.sh

#

sh configs/1_partition/partition.sh
sh configs/2_volume/volume.sh
sh configs/3_encrypt/encrypt.sh
sh configs/4_filesystem/filesystem.sh
sh configs/5_system/system.sh
sh configs/6_parameter/parameter.sh
sh configs/7_core/core.sh
sh configs/8_grub/grub.sh
sh configs/9_encrypt_home/encrypt_home.sh
sh configs/10_table/table.sh
sh configs/11_user/user.sh
sh configs/12_driver/driver.sh

#umount -R /mnt && reboot
