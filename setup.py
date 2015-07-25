#!/usr/bin/env python
# -*- coding:utf-8 -*-
# setup.py  @  2015-07-23 00:59:30
# Author: Fuyuan.Chu
# Mail: Fuyuan.Chu@emc.com
#########################################################################
# install esTookit
from setuptools import setup

setup(
    name="esTookit",
    version="1.0",
    long_description="flask demo application with materialize frontend",
    include_package_data=True,
    zip_safe=False,
    install_requires=['Flask']
)
