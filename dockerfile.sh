#!/bin/sh
# render Dockerfile.template
# git checkout -f $GERRIT_PATCHSET_REVISION
FILE=./Dockerfile.template
sed 's/RUN git checkout -f GERRIT_PATCHSET_REVISION/RUN git checkout -f $GERRIT_PATCHSET_REVISION/g' $FILE > ./Dockerfile
