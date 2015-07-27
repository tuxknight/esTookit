#!/bin/sh -ex
# render Dockerfile.template
# git checkout -f $GERRIT_PATCHSET_REVISION
FILE=./Dockerfile.template
sed "s/RUN git checkout -f GERRIT_REFSPEC/RUN git checkout -f $GERRIT_REFSPEC/g" $FILE > ./Dockerfile
