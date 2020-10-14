panda-demo
==========

A Demo Web Application for Panda Framework.

panda-demo use panda-tool to generate source code Action/Dao/View.

The xml definition files are src/gen/conf/*.xml.

### generate source code

> mvn antrun:run@codegen

the generated source files are in src/gen/java, src/gen/resources, src/gen/templates.

### add following setting to maven settings.xml to allow download snapshot artifacts
 - Linux: ~/.m2/settings.xml
 - Windows: %USERPROFILE%/.m2/settings.xml

```xml
<settings>
	<profiles>
		<profile>
			<id>allow-snapshots</id>
			<activation>
				<activeByDefault>true</activeByDefault>
			</activation>
			<repositories>
				<repository>
					<id>snapshots-repo</id>
					<url>https://oss.sonatype.org/content/repositories/snapshots</url>
					<releases><enabled>false</enabled></releases>
					<snapshots><enabled>true</enabled><updatePolicy>always</updatePolicy></snapshots>
				</repository>
			</repositories>
		</profile>
	</profiles>
</settings>
```

### build the project

> mvn clean package

if you want the demo application to send error log to your slack channel. use the following command to build the project.

> mvn clean package "-Dlog.slack.channel=your-slack-channel" "-Dlog.slack.webhook=your-slack-webhook-url"

### prepare database folder

> mkdir out/panda-demo-1.8.1/WEB-INF/_sqlite

### start the application from command

> java -jar out/dependency/webapp-runner.jar --port 8080 --uri-encoding UTF-8 --use-body-encoding-for-uri --temp-directory out/tomcat out/panda-demo-1.8.1

panda-demo default use sqlite database, the database file is automatically created at out/panda-demo-1.8.1/WEB-INF/_sqlite.

open http://localhost:8080/ in your browser and use it for fun.


### default super account

 - mail: demo.pandafw@gmail.com
 - password: trustme

you can login with the super account to try some super only features.


## 日本語説明

panda-demo は panda-tool を利用して、Action/Dao/Viewなどのソースコードを生成します。

xml定義ファイルは src/gen/conf/*.xml　にあります。

### ソースコード生成

> mvn antrun:run@codegen

生成したソースコードは src/gen/java, src/gen/resources, src/gen/templates　にあります。

### 以下の設定をmaven settings.xmlに追加して、snapshotをダウンロードできるようにする
 - Linux: ~/.m2/settings.xml
 - Windows: %USERPROFILE%/.m2/settings.xml

```xml
<settings>
	<profiles>
		<profile>
			<id>allow-snapshots</id>
			<activation>
				<activeByDefault>true</activeByDefault>
			</activation>
			<repositories>
				<repository>
					<id>snapshots-repo</id>
					<url>https://oss.sonatype.org/content/repositories/snapshots</url>
					<releases><enabled>false</enabled></releases>
					<snapshots><enabled>true</enabled><updatePolicy>always</updatePolicy></snapshots>
				</repository>
			</repositories>
		</profile>
	</profiles>
<settings/>
```

### プロジェクトをbuildする

> mvn clean package

エラーログをSlackに送信したい場合、いかのコマンドでプロジェクトをBUILDする。

> mvn clean package "-Dlog.slack.channel=your-slack-channel" "-Dlog.slack.webhook=your-slack-webhook-url"


### DBフォルダーの準備

> mkdir out/panda-demo-1.8.1/WEB-INF/_sqlite

### アプリを起動する

> java -jar out/dependency/webapp-runner.jar --port 8080 --uri-encoding UTF-8 --use-body-encoding-for-uri --temp-directory out/tomcat out/panda-demo-1.8.1

panda-demo は sqlite databaseを利用しています。アプリ起動時、データベースファイルout/panda-demo-1.8.1/WEB-INF/_sqlite が自動生成されます。

ブラウザで http://localhost:8080/ を開いて、アプリを試してください。


### 初期superアカウント

 - メール: demo.pandafw@gmail.com
 - パスワード: trustme

superアカウントでログインして、super専用の機能を試すことができます。


