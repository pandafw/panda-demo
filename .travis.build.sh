#!/bin/bash

set -e

#echo ================== Prepare Google Cloud SDK =========================
#if [ ! -d $HOME/google-cloud-sdk/bin ]; then
#	# The install script errors if this directory already exists,
#	# but Travis already creates it when we mark it as cached.
#	rm -rf $HOME/google-cloud-sdk;
#	# The install script is overly verbose, which sometimes causes
#	# problems on Travis, so ignore stdout.
#	curl https://sdk.cloud.google.com | bash > /dev/null;
#fi
#
## This line is critical. We setup the SDK to take precedence in our
## environment over the old SDK that is already on the machine.
#source $HOME/google-cloud-sdk/path.bash.inc
#gcloud components update app-engine-java
#gcloud version
#
## active service account
#gcloud auth activate-service-account --key-file gae/client-secret.json
#gcloud config set project panda-demo
#
#
#echo ================== Delete Old GAE version  =========================
#export GCLOUD_BIN=${HOME}/google-cloud-sdk/bin/gcloud
#python gae/gae-delete-old-versions.py
#
#
#echo ================== Build and Deploy to GAE =========================
#pushd gae
#ln -s ../src
#ln -s ../web
#mvn -B -s ../settings.xml -DskipTests=true -DGA=${GA_GAE} clean package appengine:deploy
#popd


echo ================== Build and Deploy to Azure =========================
pushd azure
ln -s ../src
ln -s ../web
mvn -B -s ../settings.xml -DskipTests=true -DGA=${GA_AZURE} clean package azure-webapp:deploy
popd


echo ================== Commit and Push to Heroku =========================
REVISION=`git rev-parse --short HEAD`
git clone --depth 1 https://github.com/pandafw/panda-demo-heroku.git
pushd panda-demo-heroku
git config --local user.name "Frank Wang"
git config --local user.email yf.frank.wang@outlook.com
echo git.commit.id.abbrev=${REVISION}> git.properties
cat git.properties
rm -rf src web
mv ../src ./
mv ../web ./
git add .
git commit --allow-empty -m "${REVISION} by travis-ci"
git push https://${GITHUB_USERNAME}:${GITHUB_PASSWORD}@github.com/pandafw/panda-demo-heroku.git
