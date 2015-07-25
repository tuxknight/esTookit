#!/usr/bin/env python
# -*- coding:utf-8 -*-
# run.py  @  2015-07-23 00:51:45
# Author: Fuyuan.Chu
# Mail: Fuyuan.Chu@emc.com
#########################################################

from tornado.wsgi import WSGIContainer
from tornado.httpserver import HTTPServer
from tornado.ioloop import IOLoop
from esTookit import web

http_server = HTTPServer(WSGIContainer(web.app))
http_server.listen(5003)
IOLoop.instance().start()
