#!/bin/bash
# -*- mode:sh; coding:utf-8; -*-
# author: Eugene Zamriy <eugene@zamriy.info>
# created: 2016-01-16
# description: Installs VirtualBox Guest Additions.


yum install -y bzip2 kernel-devel kernel-headers dkms gcc gcc-c++ perl make
mount -t iso9660 -o loop /root/VBoxGuestAdditions.iso /mnt
/mnt/VBoxLinuxAdditions.run
umount /mnt
rm -f /root/VBoxGuestAdditions.iso
