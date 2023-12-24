#!/bin/bash

set -e

echo ================== Build and Deploy to Azure =========================
ln -s ../src
ln -s ../web
mvn -B -s ../settings.xml -DGA=${GA_AZURE} clean package azure-webapp:deploy

