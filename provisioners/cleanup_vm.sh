#!/bin/bash
# -*- mode:sh; coding:utf-8; -*-
# author: Eugene Zamriy <eugene@zamriy.info>
# created: 2016-01-16
# description: Removes unnecessary data to produce a smaller VM.


# delete all yum cache files
yum clean all

# delete temporary files
rm -fr /tmp/*

# fill all available space with zeroes for better box compression
dd if=/dev/zero of=/zeroed_file bs=1M
rm -f /zeroed_file
sync

# clear logs and history
rm -f /var/log/wtmp /var/log/btmp
history -c
