<html>
<head>
	<title>代码生成器</title>
</head>

<body>

<div class="n-sect">
	<div class="n-sect-head">
		<h3 class="n-sect-title">代码生成器（由于自动生成Java代码，所以最多只需要手动编成1/10）</h3>
	</div>
	<div class="n-sect-body">
		<div class="doc-b">
			<p>
			代码生成器根据画面和数据定义XML文件以及模板文件自动生成数据浏览，修改变更的WEB应用程序代码。
			输入/表示项目、数据的类型・长度・格式都可以根据客户的要求进行设置及调整。
			业务逻辑的具体处理、更新時的排他验证以及追加時的重复验证等的功能，都会提供相关的模板给开发人员进行参考。
			在自动生成的源代码的基础上进行开发，可以最大化的提高工作效率，提高程序代码质量。
			</p>
			<img src="images/codegen-effect_zh.jpg">
			<br/><br/>
			<ul>
				<li><span class="doc-c">Java代码的自动生成</span>
					<div class="doc-cb">
					<b>Nuts</b>最大的特点是<span class="doc-cr">自动生存Java代码</span>。<br/>
					只要把数据类型定义及显示输入方式之类的信息定义到XML文件中，90%以上的Java代码可以自动生成。
					</div>
				</li>
				<li><span class="doc-c">Java代码自动生成的好处</span>
					<div class="doc-cb">
					Java代码自动生成最大的好处是
					<br/>
					<span class="doc-cr">由于减少了手动编码，所以大大降低了Bug的产生。</span>
					<br/>
					并且，标准化的Java代码，导致任意的程序员都可以容易地维护Java代码。
					</div>
				</li>
				<li><span class="doc-c">不需要编写SQL（※复杂的SQL除外）</span>
					<div class="doc-cb">
					代码生成器可以生成表创建DDL和数据检索・更新・删除SQL，以及DAO Class，几乎所有的数据操作，数据查询（支持复杂的检索条件）都可以通过DAO Class的方法调用实现，使得程序通俗易懂，更加快捷的创建WEB应用程序。
					</div>
				</li>
			</ul>
		</div>
	</div>
	<br/><br/>
		
	<div class="n-sect-head">
		<h3 class="n-sect-title">特别是Master表的维护功能，可以自动生成100％的代码</h3>
	</div>
	<div class="n-sect-body">
		<div class="doc-b">
			<img src="images/codegen-summary_zh.jpg"><br/>
			几乎绝大部分数据库相关的应用程序，都需要开发Master表的维护功能。<br/>
			<span class="doc-cr">对于Nuts，Master表的维护功能代码可以100%的自动生成。</span>
			<br/><br/>
			
			传统的Web应用程序的制作<br/>
			<div class="indent">
				<ul>
					<li>HTML制作</li>
					<li>数据库的连接处理</li>
					<li>画面表示</li>
					<li>数据读写</li>
					<li>输入验证</li>
					<li>数据更新</li>
				</ul>
			</div>
			<br/>
			通过上述的作业步骤，开发数据的登录・修正・删除・検索功能，需要花费相当规模的工作量。<br/>
			<span class="doc-cr">对于Nuts，只需要把表的各个項目类型以及显示输入方式定义在XML中，所有代码（包括画面代码）都可以100％自动生成。</span>		
		</div>
	</div>
	<br/><br/>

	<div class="n-sect-head">
		<h3 class="n-sect-title">代码生成器可以生成的业务功能</h3>
	</div>
	<div class="n-sect-body">
		
		<div class="doc-b">
			<p>
			如表所示，代码生成器可以生成以下的业务功能。并且，以这些业务功能为模板可以制定符合客户需要的特定业务功能。
			</p>
			<table class="doc-t">
			<thead>
			<tr>
				<th class="th-no">No.</th>
				<th class="th-name">业务功能名称</th>
				<th class="th-desc">说明</th>
			</tr>
			</thead>
			<tbody>
			<tr>
				<td>1</td>
				<td>检索功能</td>
				<td>数据检索。</td>
			</tr>
			<tr>
				<td>2</td>
				<td>列表显示功能</td>
				<td>检索结果以列表方式显示，支持排序和分页。</td>
			</tr>
			<tr>
				<td>3</td>
				<td>列表印刷显示功能</td>
				<td>	数据列表用于印刷的显示功能。</td>
			</tr>
			<tr>
				<td>4</td>
				<td>列表CSV汇出功能</td>
				<td>数据列表以CSV格式汇出的功能。</td>
			</tr>
			<tr>
				<td>5</td>
				<td>详细显示功能</td>
				<td>数据的详细内容的显示功能。</td>
			</tr>
			<tr>
				<td>6</td>
				<td>详细印刷显示功能</td>
				<td>数据的详细内容用于印刷的显示功能。</td>
			</tr>
			<tr>
				<td>7</td>
				<td>追加功能</td>
				<td>数据的追加功能。</td>
			</tr>
			<tr>
				<td>8</td>
				<td>拷贝追加功能</td>
				<td>数据的拷贝追加功能。</td>
			</tr>
			<tr>
				<td>9</td>
				<td>变更功能</td>
				<td>数据的变更功能。</td>
			</tr>
			<tr>
				<td>10</td>
				<td>删除功能</td>
				<td>数据的删除功能。</td>
			</tr>
			<tr>
				<td>11</td>
				<td>批处理功能</td>
				<td>多条数据的批处理功能。</td>
			</tr>
			</tbody>
			</table>
			
			<br/><br/>
		
			<p>代码生成器生成的WEB画面迁移图</p>
			<img src="images/codegen-screen-transition_zh.jpg">
		</div>
	</div>
</div>

</body>
</html>

