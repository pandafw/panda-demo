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
			Nutsフレームワークは企業むけ高品質なJava Web(2.0)システムを効率的に開発するためのフレームワークである。
			設計、開発、保守全ての開発フェースに対し、開発コストを削減、品質を向上するために設計されています。
			</span>
			<div class="n-clear"><hr/></div>
		</div>
		
		<div class="xhead">● Nutsの適用効果イメージ</div>
		<div class="doc-b">
			<p>Nutsを適用することにより、効果的な開発と運用保守が図れます。</p>
			
			<img src="images/nuts-apply-effect_ja.jpg">
			<img src="images/codegen-effect_ja.jpg">
		</div>
		<br/><br/>
		
		<div class="xhead">● Nutsの特徴とメリット</div>
		<div class="doc-b">
		<ol>
			<li><span class="doc-c">Struts2, iBatis/MyBatis, FreeMarkerベース</span><br/>
				最も多くの開発者が愛用しているStruts2とiBatis/MyBatisを拡張して開発したNutsは勉強しやすく、使いやすいです。<br/>
				書きにくいJSPの代わりに、構文簡潔機能豊富なテンプレートエンジンFreeMarkerを採用することにより、画面作成は簡単。<br/>
				<br/>
			</li>
			<li><span class="doc-c"><@p.a href="${base}/codegen.ftl">ソースコードの自動生成</@p.a><br/>
				Nutsのコードジェネレータを使用し、大量のソースコードを自動生成することにより、開発コストが大幅削減。</span><br/>
				実例：<a target="_blank" href="http://ec-shop.appspot.com">http://ec-shop.appspot.com</a><br/>
				ソース規模：308Ksteps　自動生成ソース：285Ksteps　自動生成率：92%<br/>
				<br/>
			</li>
			<li><span class="doc-c">SQLを書く必要がありません（※複雑のSQL除外）</span><br/>
				データ構造を定義してあるXMLで、テーブル作成などのSQLとデータアクセスのSQLとJAVAソースコードも自動的に生成できます。
				データベースの構築が容易になります。<br/>
				<br/>
			</li>
			<li><span class="doc-c">HTML画面⇒PDF帳票変換機能</span><br/>
				商用のPDF帳票作成ツールで専門の帳票画面を作成する必要がありません。
				NutsのHTML⇒PDF変換機能で、HTML画面がそのままPDF帳票に変換できるため、開発コストが大幅削減。<br/>
				<br/>
			</li>
			<li><span class="doc-c">業務ロジックの作成は簡単</span><br/>
				業務開発者は、Nutsの各種機能を利用することにより、業務処理の開発のみに集中することができます。
				「検索、一覧、表示、追加、更新、削除」のような基本機能をテンプレート化したクラスを利用することにより、
				業務ロジックを速やかに作成できます。<br/>
				<br/>
			</li>
			<li><span class="doc-c">生産性の向上と品質の均一</span><br/>
				自動生成されたソースコードをベースにして開発を行うことで、生産性の向上と品質の均一化が図れます。<br/>
				<br/>
			</li>
			<li><span class="doc-c">導入しやすい</span><br/>
				導入から開発への初期導入コストを低減する整備された豊富なドキュメント・サンプルを提供しています。<br/>
				<br/>
			</li>
		</ol>
		</div>
		<br/><br/>
		
		<div class="xhead">● Nutsを適用するシステム構成図</div>
		<div class="doc-b">
			<img src="images/nuts-system-configuration.jpg">
		</div>
		<br/><br/>

		<div class="xhead">● Nutsの構成</div>
		<div class="doc-b">
			<p>Nutsフレームワークは下記の4つの部分で構成されています。</p>
			<ol>
				<li>nuts-core　共通モジュール<br/>
					動作環境： Java5<br/>
					<br/>
				</li>
				<li>nuts-exts　拡張モジュール<br/>
					オープンソースStruts2, iBatis/MyBatis, FreeMarkerなどの拡張モジュール<br/>
					動作環境： Java5<br/>
					<br/>
				</li>
				<li>nuts-gae　Google App Engineの拡張モジュール<br/>
					動作環境： Java6<br/>
					<br/>
				</li>
				<li>nuts-tools　開発支援ツールとコードジェネレータ<br/>
					動作環境： Java6<br/>
					<br/>
				</li>
			</ol>
		</div>
	</div>
</div>

</body>
</html>

