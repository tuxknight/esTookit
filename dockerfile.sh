#!/bin/sh -ex
# render Dockerfile.template
# git checkout -f $GERRIT_PATCHSET_REVISION
FILE=./Dockerfile.template
sed "s|RUN git fetch http://10.13.182.124:8081/flask-demo GERRIT_REFSPEC|RUN git fetch http://10.13.182.124:8081/flask-demo $GERRIT_REFSPEC|g" $FILE > ./Dockerfile
sed -i "s|RUN git checkout -f GERRIT_PATCHSET_REVISION|RUN git checkout -f $GERRIT_PATCHSET_REVISION|g" ./Dockerfile
