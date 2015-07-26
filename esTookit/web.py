#!/usr/bin/env python
# -*- coding:utf-8 -*-
# web.py  @  2015-07-22 23:37:34
# Author: Fuyuan.Chu
# Mail: Fuyuan.Chu@emc.com
#########################################################################

from flask import *
from datetime import *
app = Flask(__name__)

@app.route('/')
@app.route('/<int:lines>', methods=['GET', 'POST'])
def Views(lines=1):
    if request.method == 'POST':
        return 'DONT POST ME !'
    if lines > 20:
        lines = 20
    #assert isinstance(lines, int)
    version="V-version-in-review-stage"
    current_time=datetime.strftime(datetime.now(),"%Y-%m-%d %H:%M:%S")
    return render_template('index.html', version=version, lines=lines, time=current_time)

if __name__ == '__main__':
    app.run('0.0.0.0', debug = True)
