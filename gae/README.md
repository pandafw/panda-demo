Panda Demo for Google App Engine
====================================

This is a Google App Engine Demo Web Application for Panda Framework.

See the [Google App Engine standard environment documentation][ae-docs] for more
detailed instructions.

[ae-docs]: https://cloud.google.com/appengine/docs/java/


- [Java 8](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
- [Maven](https://maven.apache.org/download.cgi) (at least 3.5)
- [Google Cloud SDK](https://cloud.google.com/sdk/) (aka gcloud)

## Prepare
### Windows
	mklink /j src ..\src
	mklink /j web ..\web
	mklink /j gae\web\static ..\..\panda\panda-html\src\html\panda\html

### Linux
	ln -s ../src
	ln -s ../web
	ln -s ../../../../panda/panda-html/src/html/panda/html gae/web/static

## Setup
	gcloud init
	gcloud auth application-default login

## Maven
### Running locally
	mvn appengine:run

### Deploying
	mvn clean package appengine:deploy
	or
	mvn clean package appengine:deploy "-DHOSTNAME=GAE" "-DGA=UA-XXXXXX-1" "-DWEBHOOK=https://hooks.slack.com/services/XXXXX/xxxxxx"

## Testing
	mvn verify

As you add / modify the source code (`src/main/java/...`) it's very useful to add
[unit testing](https://cloud.google.com/appengine/docs/java/tools/localunittesting)
to (`src/main/test/...`).  The following resources are quite useful:

- [Junit4](http://junit.org/junit4/)
- [Mockito](http://mockito.org/)
- [Truth](http://google.github.io/truth/)


## GCloud Permissions

GCloud Console / Cloud Storage / Permissions

Grant [Storage Legacy Bucket Owner] roll to panda-demo@appspot.gserviceaccount.com
