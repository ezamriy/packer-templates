#!/bin/bash
# -*- mode:sh; coding:utf-8; -*-
# author: Eugene Zamriy <eugene@zamriy.info>
# created: 2016-01-16
# description: Installs VirtualBox Guest Additions.


mount -t iso9660 -o loop /home/vagrant/VBoxGuestAdditions.iso /mnt
/mnt/VBoxLinuxAdditions.run
umount /mnt
rm -f /home/vagrant/VBoxGuestAdditions.iso
