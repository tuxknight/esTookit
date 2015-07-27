# esTookit

A demo application 

[Flask](http://flask.pocoo.org/) for backend

[materialize](http://materializecss.com/) for frontend

[Tornado](http://tornado) as a web server

##Usage

```
git clone https://github.com/tuxknight/esTookit.git
pip install -r requirements.txt
python setup.py install
python run.py
```
If you are now using jenkins and gerrit, dockerfile.sh will generate a new Dockerfile
from Dockerfile.template to make sure git can fetch the code in refs/changes .
