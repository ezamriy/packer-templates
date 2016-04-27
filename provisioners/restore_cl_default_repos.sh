#!/bin/bash
# -*- mode:sh; coding:utf-8; -*-
# author: Eugene Zamriy <eugene@zamriy.info>
# created: 2016-04-27
# description: Restores CloudLinux defalut repositories configuration.


REPO_FILE='/etc/yum.repos.d/cloudlinux.repo'
DUMP_FILE='/root/cloudlinux.repo.backup'

mv ${DUMP_FILE} ${REPO_FILE}
