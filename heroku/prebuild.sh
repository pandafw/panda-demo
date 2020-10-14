#!/bin/bash -ex

BASEDIR=$(dirname $0)

pushd $BASEDIR

ln -s ../src
ln -s ../web

echo "git.commit.id.abbrev=${SOURCE_VERSION:0:7}" > git.properties

popd
