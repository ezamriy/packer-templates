#!/bin/bash -eux
# -*- mode:sh; coding:utf-8; -*-
# author: Eugene Zamriy <eugene@zamriy.info>
# created: 2016-01-16
# description: Adds Vagrant public SSH key.


mkdir /home/vagrant/.ssh
curl -k -L "https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub" -o /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh
chmod 600 /home/vagrant/.ssh/authorized_keys
chmod 700 /home/vagrant/.ssh
