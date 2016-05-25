#!/bin/bash
# -*- mode:sh; coding:utf-8; -*-
# author: Eugene Zamriy <eugene@zamriy.info>
# created: 2016-05-24
# description: CloudLinux license activation.


/usr/sbin/rhnreg_ks --activationkey="${CL_ACTIVATION_KEY}"
