#!/bin/bash
# -*- mode:sh; coding:utf-8; -*-
# author: Eugene Zamriy <eugene@zamriy.info>
# created: 2016-04-22
# description: OpenNebula virtual machine configuration.


DISTR_VERSION=$(python -c 'import platform; print platform.dist()[1].split(".")[0]')

# setup contextualization tools
yum install -y https://github.com/OpenNebula/addon-context-linux/releases/download/v4.14.4/one-context_4.14.4.rpm

# setup cloud-utils-growpart for an automated root partition resizing
if [ "${DISTR_VERSION}" -eq "7" ]; then
  # NOTE: dracut-modules-growroot is not needed on EL7
  yum install -y cloud-utils-growpart parted --enablerepo=epel
else
  yum install -y cloud-utils-growpart parted dracut-modules-growroot --enablerepo=epel
fi

# update initramfs
dracut -f

# delete root password
passwd -d root
passwd -l root
