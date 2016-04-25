#!/bin/bash
# -*- mode:sh; coding:utf-8; -*-
# author: Eugene Zamriy <eugene@zamriy.info>
# created: 2016-04-22
# description: Adds EPEL repository and disables it by default.


DISTR_VERSION=$(python -c 'import platform; print platform.dist()[1].split(".")[0]')

yum install -y http://dl.fedoraproject.org/pub/epel/epel-release-latest-${DISTR_VERSION}.noarch.rpm

sed -i -e '/\[epel\]/,/^\[/s/enabled=1/enabled=0/' /etc/yum.repos.d/epel.repo
