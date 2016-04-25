#!/bin/bash
# -*- mode:sh; coding:utf-8; -*-
# author: Eugene Zamriy <eugene@zamriy.info>
# created: 2016-04-22
# description: OpenNebula virtual machine configuration.


# setup contextualization tools
yum install -y https://github.com/OpenNebula/addon-context-linux/releases/download/v4.14.4/one-context_4.14.4.rpm

# setup cloud-utils-growpart for an automated root partition resizing
yum install -y cloud-utils-growpart parted dracut-modules-growroot --enablerepo=epel

# update initramfs
dracut -f

# delete root password
passwd -d root
passwd -l root
