<html>
<head>
	<title><@p.text name="site-desc"/></title>
</head>

<body>

<div class="p-section">
	<div class="p-header">
		<h3 class="p-title"><@p.text name="site-desc"/></h3>
	</div>
	<div class="n-sect-body">
		<h1>h1</h1>
		<h2>h2</h2>
		<h3>h3</h3>
		<h4>h4</h4>
		<h5>h5</h5>
		<h6>h6</h6>
		<div>div</div>
		<span>span</span>
		<ol>
			<li>1</li>
			<li>2</li>
		</ol>
		
		<div>
			<@p.submit icon="n-icon-bullet_go" action="index">submit</@p.submit>
			<@p.b icon="n-icon-house" href="http://www.msn.co.jp">www.msn.co.jp</@p.b>
			<@p.reset icon="n-icon-bullet_go" action="index">reset</@p.reset>
		</div>

		<h3>page - total</h3>
		<div>0. <@p.pager start=0 limit=10 total=100 linkHref="index?s=!{start}&p=!{page}&l=!{limit}"/></div>
		<div>1. <@p.pager start=1 limit=10 total=100 linkHref="index?s=!{start}&p=!{page}&l=!{limit}"/></div>
		<div>9. <@p.pager start=9 limit=10 total=100 linkHref="index?s=!{start}&p=!{page}&l=!{limit}"/></div>
		<div>10. <@p.pager start=10 limit=10 total=100 linkHref="index?s=!{start}&p=!{page}&l=!{limit}"/></div>
		<div>89. <@p.pager start=89 limit=10 total=100 linkHref="index?s=!{start}&p=!{page}&l=!{limit}"/></div>
		<div>90. <@p.pager start=90 limit=10 total=100 linkHref="index?s=!{start}&p=!{page}&l=!{limit}"/></div>
		<div>91. <@p.pager start=91 limit=10 total=100 linkHref="index?s=!{start}&p=!{page}&l=!{limit}"/></div>
		<div>99. <@p.pager start=99 limit=10 total=100 linkHref="index?s=!{start}&p=!{page}&l=!{limit}"/></div>
		<div>100. <@p.pager start=100 limit=10 total=100 linkHref="index?s=!{start}&p=!{page}&l=!{limit}"/></div>

		<h3>page - count</h3>
		<div>0-9. <@p.pager start=0 count=9 limit=10 linkHref="index?s=!{start}&p=!{page}&l=!{limit}"/></div>
		<div>0-10. <@p.pager start=0 count=10 limit=10 linkHref="index?s=!{start}&p=!{page}&l=!{limit}"/></div>
		<div>1-9. <@p.pager start=1 count=9 limit=10 linkHref="index?s=!{start}&p=!{page}&l=!{limit}"/></div>
		<div>1-10. <@p.pager start=1 count=10 limit=10 linkHref="index?s=!{start}&p=!{page}&l=!{limit}"/></div>
		<div>10-9. <@p.pager start=10 count=9 limit=10 linkHref="index?s=!{start}&p=!{page}&l=!{limit}"/></div>
		<div>10-10. <@p.pager start=10 count=10 limit=10 linkHref="index?s=!{start}&p=!{page}&l=!{limit}"/></div>
	</div>
</div>

</body>
</html>

