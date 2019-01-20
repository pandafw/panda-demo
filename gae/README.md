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
	mklink /j gae\web\static ..\..\panda\panda-html\src\html

### Linux
	ln -s ../src
	ln -s ../web
	ln -s ../../../../panda/panda-html/src/html gae/web/static

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

## Updating to latest Artifacts

An easy way to keep your projects up to date is to use the maven [Versions plugin][versions-plugin].

	mvn versions:display-plugin-updates
	mvn versions:display-dependency-updates
	mvn versions:use-latest-versions

Note - Be careful when changing `javax.servlet` as App Engine Standard uses 3.1 for Java 8, and 2.5 for Java 7.

Our usual process is to test, update the versions, then test again before committing back.

[plugin]: http://www.mojohaus.org/versions-maven-plugin/
