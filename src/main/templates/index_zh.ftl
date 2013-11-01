<#--
/*
 * This file is part of Nuts Framework.
 * Copyright(C) 2009-2012 Nuts Develop Team.
 *
 * Nuts Framework is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License any later version.
 * 
 * Nuts Framework is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Nuts Framework. If not, see <http://www.gnu.org/licenses/>.
 */
-->
<html>
<head>
	<title><@p.text name="site-desc"/></title>
</head>

<body>

<div class="n-sect">
	<div class="p-header">
		<h3 class="p-title"><@p.text name="site-desc"/></h3>
	</div>
	<div class="n-sect-body">
		<div class="doc-b">
			<img class="n-fleft" src="images/nuts.jpg">
			<span>
				Nuts开发框架基于Struts2 & iBatis/MyBatis & FreeMarker，这是一个优雅的，可扩展的开发框架。
				主要用于建立企业级的Java Web(2.0)系统。<br/>
				该框架旨在简化整个开发周期（设计，建设，部署，以及维护应用），降低开发费用，提高产品质量。	
			</span>
			<div class="n-clear"><hr/></div>
		</div>
		
		<div class="xhead">● Nuts开发框架的开发效果</div>
		<div class="doc-b">
			<p>使用Nuts开发框架，可以大幅提高项目开发及维护效率。</p>
			
			<img src="images/nuts-apply-effect_zh.jpg">
			<img src="images/codegen-effect_zh.jpg">
		</div>
		<br/><br/>
		
		<div class="xhead">● Nuts的特点和优点</div>
		<div class="doc-b">
		<ol>
			<li><span class="doc-c">基于Struts2, iBatis/MyBatis, FreeMarker</span><br/>
				Struts2和iBatis/MyBatis是绝大多数开发者所熟悉以及使用的开发框架。<br/>
				在此基础上开发出来的Nuts非常容易学习和使用。<br/>
				对于复杂的JSP语法，Nuts采用了语法更简洁，功能更丰富的模板引擎FreeMarker，使得开发者更加用以制作画面。<br/>
				<br/>
			</li>
			<li><span class="doc-c"><@p.a href="${base}/codegen.ftl">自动生成大量源代码</@p.a></span><br/>
				使用Nuts的代码生成器，可以自动生成大量的源代码，极大幅度的削减开发费用。<br/>
				采用项目：<a target="_blank" href="http://ec-shop.appspot.com">http://ec-shop.appspot.com</a><br/>
				代码规模：308Ksteps　自动生成的代码：285Ksteps　自动生成率：92%<br/>
				<br/>
			</li>
			<li><span class="doc-c">不需要编写SQL（※复杂的SQL除外）</span><br/>
				根据数据结构定义XML文件，可以自动生成关于表创建的SQL，数据存储的SQL和JAVA源代码。<br/>
				利用这些自动生成的代码，可以轻松的创建数据库。<br/>
				<br/>
			</li>
			<li><span class="doc-c">HTML画面⇒PDF报表转换功能</span><br/>
				不需要使用商用的PDF报表制作工具专门制作报表画面。
				使用Nuts的HTML⇒PDF转换功能， 可以直接把HTML画面转换为PDF报表，大幅削减开发费用。<br/>
				<br/>
			</li>
			<li><span class="doc-c">业务逻辑的开发简单</span><br/>
				开发人员利用Nuts的各种功能，可以集中精力开发业务逻辑。<br/>
				「检索、列表、显示、追加、变更、删除」这样的基本功能都已经被模板化，利用这些模板可以很轻松的制作业务逻辑。<br/>
				<br/>
			</li>
			<li><span class="doc-c">提高工作效率和程序质量</span><br/>
				在自动生成的源代码的基础上进行开发，可以最大化的提高工作效率，提高程序代码质量。<br/>
				<br/>
			</li>
			<li><span class="doc-c">易投入、易使用</span><br/>
				大量丰富的文档及样本使得Nuts的初期投入费用大为减少。<br/>
				<br/>
			</li>
		</ol>
		</div>
		<br/><br/>
		
		<div class="xhead">● 使用Nuts开发框架的系统构成图</div>
		<div class="doc-b">
			<img src="images/nuts-system-configuration.jpg">
		</div>
		<br/><br/>

		<div class="xhead">● Nuts的构成</div>
		<div class="doc-b">
			<p>Nuts开发框架主要由以下4个部分构成。</p>
			<ol>
				<li>nuts-core　共通模块<br/>
					执行环境： Java5<br/>
					<br/>
				</li>
				<li>nuts-exts　扩展模块<br/>
					开源框架Struts2, iBatis/MyBatis, FreeMarker等等的扩展模块<br/>
					执行环境： Java5<br/>
					<br/>
				</li>
				<li>nuts-gae　Google App Engine的扩展模块<br/>
					执行环境： Java6<br/>
					<br/>
				</li>
				<li>nuts-tools　代码生成器和其他开发工具<br/>
					执行环境： Java6<br/>
					<br/>
				</li>
			</ol>
		</div>
	</div>
</div>

</body>
</html>

