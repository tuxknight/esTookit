FROM ubuntu:14.04
MAINTAINER fuyuan.chu@emc.com
# install basic env
RUN apt-get update && apt-get install git python2.7-dev python-pip -y
##RUN mkdir -p /work/esTookit
# add a user to run the web application
RUN useradd -d /var/lib/tornado -u 1000 -m -s /bin/bash tornado
# those COPY things seems dont work in jenkins
## COPY ["MANIFEST.in", "README.md", "requirements.txt", "run.py", "setup.py", "/work/"]
## COPY ["esTookit", "/work/esTookit"]
RUN git clone http://chufy@10.13.182.124:7990/scm/es/estookit.git /work
WORKDIR /work
# install dependencies
RUN pip install -r /work/requirements.txt
# install esTookit
RUN python /work/setup.py install
VOLUME /work
# add tornado web server works on 5003
EXPOSE 5003
USER tornado
CMD ["/usr/bin/python", "/work/run.py"]
