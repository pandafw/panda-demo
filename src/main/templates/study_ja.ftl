<html>
<head>
	<title>勉強ガイド</title>
</head>

<body>

<div class="n-sect">
	<div class="p-header">
		<h3>勉強ガイド</h3>
	</div>
	<div class="n-sect-body">
		<div class="doc-b">
		Nuts FramkworkはStruts2, iBatis/MyBatis, FreeMarkerをベースにするので、Nutsを勉強する前に、上記技術をマスターしたほうが良いと思われます。<br/>
		nuts-demoをサンプルとして、nuts-demoのインストールを説明します。
		</div>
		</br>
		
		<div class="doc-b">
		<ul>
			<li><b>BROWSER</b>
				<ol>
					<li>IE6, IE7, IE8 + IE Develop bar (Google it!) (推薦しない、遅い且つW3C相性悪い、DEBUGしにくい)</li>
					<li>FireFox + FireBug + HtmlValidator</li>
					<li><b>Chrome (推薦、早い、DEBUGしやすい)</b></li>
					<li>Safari</li>
				</ol>
				<br/>
			</li>
			<li><b>データベース - MySQL</b>
				<ol>
					<li>Server<br/>
						<a target="_blank" href="http://dev.mysql.com/downloads/installer/5.5.html">http://dev.mysql.com/downloads/installer/5.5.html</a>
					</li>
					<li>Client<br/>
						<a target="_blank" href="http://dev.mysql.com/downloads/gui-tools/5.0.html">http://dev.mysql.com/downloads/gui-tools/5.0.html</a><br/>
						或いは<br/>
						<a target="_blank" href="http://dev.mysql.com/downloads/workbench/5.2.html">http://dev.mysql.com/downloads/workbench/5.2.html</a>
					</li>
				</ol>
				<br/>
				nuts-demoのデータベース設定
				<ol>
					<li>データベース作成<br/>
						データベース名: nuts_demo
					</li>
					<li>ユーザー作成<br/>
						ユーザー名: 'nuts'@'localhost'<br/>
						パスワード: trustme<br/>
						権限: nuts_demoのすべて権限<br/>
					</li>
				</ol>
				<br/>
			</li>
			<li><b>APサーバ - Tomcat6</b>
				<ol>
					<li><a target="_blank" href="http://ftp.riken.jp/net/apache/tomcat/tomcat-6/v6.0.33/bin/apache-tomcat-6.0.33.zip">http://ftp.riken.jp/net/apache/tomcat/tomcat-6/v6.0.33/bin/apache-tomcat-6.0.33.zip</a></li>
					<li>MySQLのJDBC Driver mysql-connector-java-5.1.12-bin.jarをTOMCAT_HOME/libにコピーしてください。</li>
					<li>TOMCAT_HOME/conf/Catalina/localhostにnuts-demo.xmlを追加:<br/>
						<pre class="doc-code">
&lt;Context path="nuts-demo" reloadable="true" docBase="C:\Develop\projects\java\nuts-demo\web"&gt;
  &lt;Loader className="org.apache.catalina.loader.DevLoader"
             reloadable="true" debug="1" 
             useSystemClassLoaderAsParent="false" /&gt;
  &lt;Resource name="jdbc/nuts-demo" auth="Container" type="javax.sql.DataSource"
               maxActive="10" maxIdle="5" maxWait="10000"
               username="nuts" password="trustme"
               driverClassName="com.mysql.jdbc.Driver"
               url="jdbc:mysql://localhost:3306/nuts_demo?autoReconnect=true&amp;useUnicode=true&amp;characterEncoding=utf8"
               validationQuery="SELECT 1"
  /&gt;
&lt;/Context&gt;
						</pre>
					</li>
				</ol>
			</li>
			<li><b>Eclipse</b><br/>
				インストール：
				<ol>
					<li><a target="_blank" href="http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/indigo/R/eclipse-jee-indigo-win32.zip">http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/indigo/R/eclipse-jee-indigo-win32.zip</a></li>
					<li>Subeclipse  <a target="_blank" href="http://subclipse.tigris.org">http://subclipse.tigris.org</a></li>
					<li>propedit  <a target="_blank" href="http://propedit.sourceforge.jp">http://propedit.sourceforge.jp</a></li>
					<li>sysdeo tomcat  <a target="_blank" href="http://www.eclipsetotale.com/tomcatPlugin/tomcatPluginV33.zip">http://www.eclipsetotale.com/tomcatPlugin/tomcatPluginV33.zip</a></li>
					<li>ERMaster  <a target="_blank" href="http://ermaster.sourceforge.net">http://ermaster.sourceforge.net</a></li>
				</ol>
				<br/>
				環境設定：
				<ol>
					<li>Eclipse -> Window -> Preferences -> General -> Content Types<br/>
						Textに*.ftl *.sql *.jsを追加、Default EncodingをUTF-8に設定。
					</li>
					<li>sysdeo tomcat pluginsを正しく設定してくさい。<br/>
						PluginのDevLoader.zipをTOMCAT_HOME/lib/DevLoader.<b>jar</b>にコピーしてください。
					</li>
				</ol>
				<br/>
			</li>
			<li><b>nuts-demoのインストール</b><br/>
				<ol>
					<li>Eclipse SVN Repositoryで http://svn.sourceforge.jp/svnroot/nutsを追加
					</li>
					<li>下記のプロジェクトをCheckoutする
						<ul>
							<li>/trunk/nuts-core</li>
							<li>/trunk/nuts-exts</li>
							<li>/trunk/nuts-lib</li>
							<li>/trunk/nuts-tools</li>
							<li>/trunk/nuts-demo</li>
						</ul>
					</li>
					<li>nuts-core/build.xml, nuts-exts/build.xml, nuts-demo/build.xmlをEclipse Ant Viewに追加</li>
					<li>Eclipse -> Project -> Build All 或いは Clean All</li>
					<li>Ant Viewでnuts-demo/build.xmlのgen-allタスクをダブルクリックで実行する<br/>
						※Nutsのコードジェネレータでソースコードを実行生成。<br/>
						Build 或いは Refresh nuts-demo
					</li>
					<li>Ant Viewでnuts-demo/build.xmlのimp-xlsタスクをダブルクリックで実行する<br/>
						※データベースにテストデータをインポートする
					<li>Ant Viewでnuts-exts/build.xmlのcstaticタスクをダブルクリックで実行する<br/>
						※JavaScriptとCSSファイルをマージする
					<li>sysdeo tomcatでTomcatを起動</li>
					<li>http://localhost:8080/nuts-demoを開く</li>
				</ol>
			</li>
		</ul>
		</div>
	</div>
</div>

</body>
</html>

