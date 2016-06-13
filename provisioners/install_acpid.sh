#!/bin/bash
# -*- mode:sh; coding:utf-8; -*-
# author: Eugene Zamriy <eugene@zamriy.info>
# created: 2016-06-13
# description: installs and enables acpid daemon.


yum install -y acpid
chkconfig acpid on
service acpid start
