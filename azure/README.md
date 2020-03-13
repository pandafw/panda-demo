Panda Demo for Azure
====================================

This is a Azure Demo Web Application for Panda Framework.

- [Java 8](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
- [Maven](https://maven.apache.org/download.cgi) (at least 3.5)

## Prepare
### Windows
	mklink /j src ..\src
	mklink /j web ..\web

### Linux
	ln -s ../src
	ln -s ../web

## Setup
	az login

### Deploying
	mvn clean package "-DHOSTNAME=GAE" "-DGA=UA-XXXXXX-1" "-DWEBHOOK=https://hooks.slack.com/services/XXXXX/xxxxxx"
	mvn azure-webapp:deploy

### Change Tomcat Setting
 use FTP to upload server.xml, web.config to server://D:\home\site\wwwroot\

### CI Deploy
	https://docs.microsoft.com/en-us/azure/java/spring-framework/deploy-containerized-spring-boot-java-app-with-maven-plugin
	
	az ad sp create-for-rbac --years 100
	