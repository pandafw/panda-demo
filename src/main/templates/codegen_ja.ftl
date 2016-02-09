<html>
<head>
	<title>コードジェネレータ</title>
</head>

<body>

<div class="p-section">
	<div class="p-header">
		<h3>コードジェネレータ（Javaソースコード自動生成により記述部分が最大1/10）</h3>
	</div>
	<div class="n-sect-body">
		<div class="doc-b">
			<p>
			コードジェネレータは、画面およびデータの定義情報とテンプレートをもとに、データの照会・更新等を行うWebアプリケーションのソースコードを自動生成する。
			入力・表示項目や、型・桁数に関する定義については、お客様の指定に容易に合わせられるよう、デザインされている。
			業務固有の処理については、更新時の排他チェックや追加時の重複チェック等の枠組みのみを提供し、実装は開発者が行う。
			自動生成されたソースコードをベースとして開発を行うことで、生産性の向上と品質の均一化が図れます。
			</p>
			<img src="images/codegen-effect_ja.jpg">
			<br/><br/>
			<ul>
				<li><span class="doc-c">Javaソースコード自動生成</span>
					<div class="doc-cb">
					<b>Nuts</b>最大の特徴は、<span class="doc-cr">Javaソースコードを自動生成</span>することです。<br/>
					データの型情報と画面の表示入力方法をXMLで設定するだけで、プロジェクト全体最大90%のJavaソースコードを自動生成することが可能になります。
					</div>
				</li>
				<li><span class="doc-c">Javaソースコード自動生成のメリット</span>
					<div class="doc-cb">
					Javaソースコードを自動生成する1番のメリットは、
					<br/>
					<span class="doc-cr">記述する場所が少なくなるため、バグの発生率が低くなるということです。</span>
					<br/>
					そして、Javaソースコードが標準化されるので、誰でも容易にJavaソースコードをメンテナンスできるようになります。
					</div>
				</li>
				<li><span class="doc-c">SQLを書く必要がありません（※複雑のSQL除外）</span>
					<div class="doc-cb">
					データ構造を定義してあるXMLで、テーブル作成などのSQLとデータアクセスのSQLとJAVAソースコードも自動的に生成できるた、
					データベースの構築が容易になります。また、全てのデータ検索（複雑の検索条件も指定可能）・更新・削除処理は生成した
					Java Classのメソッドを呼ぶだけで実現できます。SQLを書かないため、Webアプリケーションの開発も容易にまります。
					</div>
				</li>
			</ul>
		</div>
	</div>
	<br/><br/>
		
	<div class="p-header">
		<h3>さらに、マスタメンテナンスプログラムは100％自動生成</h3>
	</div>
	<div class="n-sect-body">
		<div class="doc-b">
			<img src="images/codegen-summary_ja.jpg"><br/>
			システム構築にあたって、マスタメンテナンスプログラムを作成されるかと思います。<br/>
			<span class="doc-cr">Nutsでは、マスタメンテナンスプログラムに至っては、100%完全に自動生成することが可能です。</span>
			<br/><br/>
			
			従来、Webアプリケーションで作成するには<br/>
			<div class="indent">
				<ul>
					<li>HTMLを作成</li>
					<li>データベースの接続処理</li>
					<li>画面表示</li>
					<li>データアクセス</li>
					<li>入力チェック</li>
					<li>データ更新</li>
				</ul>
			</div>
			<br/>
			上記作業等が必要で、機能的にもレコードの登録・修正・削除・検索が必要になり、開発にかかるワークロードが大きかったのですが、<br/>
			<span class="doc-cr">Nutsでは、DB各項目に対し、パラメータを指定するだけで画面表示まで含めて100％自動生成してくれます。</span>		
		</div>
	</div>
	<br/><br/>

	<div class="p-header">
		<h3>コードジェネレータで生成可能な機能</h3>
	</div>
	<div class="n-sect-body">
		<div class="doc-b">
			<p>
			ジェネレータでは下記の機能を生成することが可能である。
			また、その機能をテンプレートとしてカスタマイズの機能を生成することも可能です。
			</p>
			<table class="doc-t">
			<thead>
			<tr>
				<th class="th-no">No.</th>
				<th class="th-name">機能名称</th>
				<th class="th-desc">説明</th>
			</tr>
			</thead>
			<tbody>
			<tr>
				<td>1</td>
				<td>検索機能</td>
				<td>データを検索する機能。</td>
			</tr>
			<tr>
				<td>2</td>
				<td>一覧表示機能</td>
				<td>検索結果一覧を表示する機能。</td>
			</tr>
			<tr>
				<td>3</td>
				<td>一覧印刷表示機能</td>
				<td>データの一覧を印刷用に表示する機能。</td>
			</tr>
			<tr>
				<td>4</td>
				<td>一覧CSV出力機能</td>
				<td>データの一覧をCSVファイルに出力する機能。</td>
			</tr>
			<tr>
				<td>5</td>
				<td>詳細表示機能</td>
				<td>データの詳細情報を表示する機能。</td>
			</tr>
			<tr>
				<td>6</td>
				<td>詳細印刷表示機能</td>
				<td>データの詳細情報を印刷用に表示する機能。</td>
			</tr>
			<tr>
				<td>7</td>
				<td>新規追加機能</td>
				<td>データを新規追加する機能。</td>
			</tr>
			<tr>
				<td>8</td>
				<td>複写追加機能</td>
				<td>データを複写追加する機能。</td>
			</tr>
			<tr>
				<td>9</td>
				<td>変更機能</td>
				<td>データを変更する機能。</td>
			</tr>
			<tr>
				<td>10</td>
				<td>削除機能</td>
				<td>データを削除する機能。</td>
			</tr>
			<tr>
				<td>11</td>
				<td>一括処理機能</td>
				<td>複数件のデータを一括処理する機能。</td>
			</tr>
			</tbody>
			</table>
			
			<br/><br/>

			<p>コードジェネレータによって、自動生成されるWEB画面遷移図</p>
			<img src="images/codegen-screen-transition_ja.jpg">
		</div>
	</div>
</div>

</body>
</html>

