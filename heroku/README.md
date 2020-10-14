Panda Demo for Heroku
====================================

This is a Panda Demo Web Application run on Heroku.

- [Java 8](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
- [Maven](https://maven.apache.org/download.cgi) (at least 3.5)


## build configuration
https://elements.heroku.com/buildpacks/heroku/heroku-buildpack-java

	heroku config:set MAVEN_CUSTOM_GOALS="clean package"
	heroku config:set MAVEN_CUSTOM_OPTS="-f heroku/pom.xml -DskipTests=true"
