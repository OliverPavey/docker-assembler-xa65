#!/bin/bash

SCRIPTFOLDER="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

IMAGENAME=assembler-xa65

pushd . > /dev/null
cd $SCRIPTFOLDER/docker

docker build -t $IMAGENAME .

docker image list -a $IMAGENAME

popd > /dev/null
