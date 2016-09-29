#!/bin/bash
# -*- mode:sh; coding:utf-8; -*-
# author: Eugene Zamriy <eugene@zamriy.info>
# created: 2016-04-22
# description: OpenNebula virtual machine configuration.


DISTR_VERSION=$(python -c 'import platform; print platform.dist()[1].split(".")[0]')

CONTEXT_PKG='one-context_5.0.2.rpm'
CONTEXT_PKG_URL="https://github.com/OpenNebula/addon-context-linux/releases/download/v5.0.2/${CONTEXT_PKG}"


if [ "${DISTR_VERSION}" -eq "5" ]; then
  curl -L -O "${CONTEXT_PKG_URL}"
  rpm -Uvh "${CONTEXT_PKG}"
  rm -f "${CONTEXT_PKG}"

  sed -i -e 's/CONTEXT_DEV=`blkid -l -t LABEL="CONTEXT" -o device`/CONTEXT_DEV="\/dev\/cdrom"/' /usr/sbin/one-contextd
  sed -i -e 's/-L CONTEXT -o ro/-o ro ${CONTEXT_DEV}/' /usr/sbin/one-contextd
else
  yum install -y "${CONTEXT_PKG_URL}"
  if [ "${DISTR_VERSION}" -eq "7" ]; then
    yum install -y cloud-utils-growpart parted --enablerepo=epel
  else
    yum install -y cloud-utils-growpart parted dracut-modules-growroot --enablerepo=epel
  fi
  # update initramfs
  dracut -f
fi


# delete root password
passwd -d root
passwd -l root
