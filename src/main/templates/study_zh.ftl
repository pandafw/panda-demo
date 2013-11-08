<html>
<head>
	<title>学习向导</title>
</head>

<body>

<div class="n-sect">
	<div class="p-header">
		<h3 class="p-title">学习向导</h3>
	</div>
	<div class="n-sect-body">
		<div class="doc-b">
		Nuts框架基于Struts2, iBatis/MyBatis, FreeMarker。学习Nuts之前请先了解一下上述技术。<br/>
		以nuts-demo为样本, 简单讲解nuts-demo的安装和使用。
		</div>
		</br>
		
		<div class="doc-b">
		<ul>
			<li><b>浏览器</b>
				<ol>
					<li>IE6, IE7, IE8 + IE Develop bar (Google it!) (不推荐使用，速度慢，W3C不兼容)</li>
					<li>FireFox + FireBug + HtmlValidator</li>
					<li><b>Chrome (推荐使用，速度快，Debug容易)</b></li>
					<li>Safari</li>
				</ol>
				<br/>
			</li>
			<li><b>数据库 - MySQL</b>
				<ol>
					<li>Server<br/>
						<a target="_blank" href="http://dev.mysql.com/downloads/installer/5.5.html">http://dev.mysql.com/downloads/installer/5.5.html</a>
					</li>
					<li>Client<br/>
						<a target="_blank" href="http://dev.mysql.com/downloads/gui-tools/5.0.html">http://dev.mysql.com/downloads/gui-tools/5.0.html</a><br/>
						或者<br/>
						<a target="_blank" href="http://dev.mysql.com/downloads/workbench/5.2.html">http://dev.mysql.com/downloads/workbench/5.2.html</a>
					</li>
				</ol>
				<br/>
				nuts-demo的数据库设置
				<ol>
					<li>数据库创建<br/>
						数据库名: nuts_demo
					</li>
					<li>用户创建<br/>
						用户名: 'nuts'@'localhost'<br/>
						密码: trustme<br/>
						权限: nuts_demo的所有权限<br/>
					</li>
				</ol>
				<br/>
			</li>
			<li><b>AP服务器 - Tomcat6 </b>
				<ol>
					<li><a target="_blank" href="http://ftp.riken.jp/net/apache/tomcat/tomcat-6/v6.0.33/bin/apache-tomcat-6.0.33.zip">http://ftp.riken.jp/net/apache/tomcat/tomcat-6/v6.0.33/bin/apache-tomcat-6.0.33.zip</a></li>
					<li>注意把MySQL的JDBC驱动库mysql-connector-java-5.1.12-bin.jar拷贝到TOMCAT_HOME/lib下面。</li>
					<li>TOMCAT_HOME/conf/Catalina/localhost下追加nuts-demo.xml:<br/>
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
				安装：
				<ol>
					<li><a target="_blank" href="http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/indigo/R/eclipse-jee-indigo-win32.zip">http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/indigo/R/eclipse-jee-indigo-win32.zip</a></li>
					<li>Subeclipse  <a target="_blank" href="http://subclipse.tigris.org">http://subclipse.tigris.org</a></li>
					<li>propedit  <a target="_blank" href="http://propedit.sourceforge.jp">http://propedit.sourceforge.jp</a></li>
					<li>sysdeo tomcat  <a target="_blank" href="http://www.eclipsetotale.com/tomcatPlugin/tomcatPluginV33.zip">http://www.eclipsetotale.com/tomcatPlugin/tomcatPluginV33.zip</a></li>
					<li>ERMaster  <a target="_blank" href="http://ermaster.sourceforge.net">http://ermaster.sourceforge.net</a></li>
				</ol>
				<br/>
				开发环境设置：
				<ol>
					<li>Eclipse -> Window -> Preferences -> General -> Content Types<br/>
						Text中追加*.ftl *.sql *.js, 并且把Default Encoding设置为UTF-8。
					</li>
					<li>请正确设置sysdeo tomcat plugins<br/>
						并且注意把Plugins中的DevLoader.zip拷贝到TOMCAT_HOME/lib/DevLoader.<b>jar</b>
					</li>
				</ol>
				<br/>
			</li>
			<li><b>nuts-demo的安装</b><br/>
				<ol>
					<li>Eclipse SVN Repository里面添加 http://svn.sourceforge.jp/svnroot/nuts
					</li>
					<li>Checkout 以下项目
						<ul>
							<li>/trunk/nuts-core</li>
							<li>/trunk/nuts-exts</li>
							<li>/trunk/nuts-lib</li>
							<li>/trunk/nuts-tools</li>
							<li>/trunk/nuts-demo</li>
						</ul>
					</li>
					<li>把nuts-core/build.xml, nuts-exts/build.xml, nuts-demo/build.xml加入Eclipse Ant View里面</li>
					<li>Eclipse -> Project -> Build All 或者 Clean All</li>
					<li>Ant View中鼠标双击执行nuts-demo/build.xml的gen-all任务。<br/>
						※使用Nuts的代码生成器自动生成代码。<br/>
						Build 或者 Refresh nuts-demo.
					</li>
					<li>Ant View中鼠标双击执行nuts-demo/build.xml的imp-xls任务。<br/>
						向数据库中汇入测试数据。
					<li>Ant View中鼠标双击执行nuts-exts/build.xml的cstatic任务。<br/>
						※合并一些JavaScript和CSS文件至classes目录。
					<li>使用sysdeo tomcat启动Tomcat</li>
					<li>浏览http://localhost:8080/nuts-demo</li>
				</ol>
			</li>
		</ul>
		</div>
	</div>
</div>

</body>
</html>

