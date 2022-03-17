#!/bin/bash
cryptsetup luksClose /dev/mapper/root
cryptsetup luksClose /dev/mapper/home
cryptsetup luksClose /dev/mapper/var
cryptsetup luksClose /dev/mapper/swap
cryptsetup luksClose /dev/mapper/crap
cryptsetup erase /dev/mapper/root
cryptsetup erase /dev/mapper/home
cryptsetup erase /dev/mapper/boot
cryptsetup erase /dev/mapper/swap

lvremove /dev/archlvm/archlvm-root
lvremove /dev/archlvm/archlvm-swap
lvremove /dev/archlvm/archlvm-tmp
lvremove /dev/archlvm/archlvm-home

vgremove archlvm
pvremove /dev/sda3
wipefs -f -a /dev/sdb1
wipefs -f -a /dev/sdb2
wipefs -f -a /dev/sdb

exit 0