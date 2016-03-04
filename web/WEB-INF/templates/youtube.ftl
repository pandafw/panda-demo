<html>
<head>
	<title>Youtube Search Page</title>
</head>

<body>
<style>
#yt_result h5 {
	color: #800;
}
#yt_result .thumbnail {
	cursor: pointer;
	min-height: 270px;
}
#yt_result .thumbnail:hover {
	background-color: #FFF8DC;
}
#yt_result img {
	width: 240px;
	height: 180px;
}
</style>

<div class="p-section">
	<div class="p-header">
		<h3><i class="fa fa-youtube"></i> YouTube Search</h3>
	</div>

	<@p.form id="yt_search" cssClass="navbar-form" method="GET" hooked="true" loadmask="false" theme="simple" role="search" onsubmit="return yt_query();">
		<div class="form-group">
			<@p.textfield cssClass="form-control" id="yt_search_text" name="key" maxlength="80" value="%{key}" placeholder="#('placeholder-search')"/>
		</div>
		<@p.submit icon="search" label="#(button-search)"/>
	</@p.form>

	<div id="yt_result"></div>
	
	<script>
		function yt_query() {
			var key = $("#yt_search_text").val();
			s_addScript("http://gdata.youtube.com/feeds/api/videos?q=" + encodeURIComponent(key) + "&alt=json-in-script&callback=yt_callback&max-results=50&format=5");
			return false;
		}
		
		function yt_callback(data) {
			var feed = data.feed;
			var entries = feed.entry || [];
			var html = [ '<hr/><div class="row">' ];
			for (var i = 0; i < entries.length; i++) {
				var entry = entries[i];
				var title = entry.title.$t;
				var thumbnailUrl = entry.media$group.media$thumbnail[0].url;
				var mediaUrl = entry.media$group.media$content[0].url;
				var playerUrl = entry.media$group.media$player[0].url;
				html.push('<div class="col-md-4">', '<a target="_blank" href="', playerUrl, '">',
						'<div class="thumbnail">', '<img src="', thumbnailUrl, '"/>',
						'<div class="titlec">', title, 
						' (', secondsToTime(entry.media$group.yt$duration.seconds), ')',
						'</div></div></a></div>');
			}
			html.push('</div>');
			$('#yt_result').html(html.join(''));
		}
		
		function secondsToTime(s) {
			var h = Math.floor(s / 3600);
			s = s - h * 3600;
			var m = Math.floor(s / 60);
			s = s - m * 60;
		
			return (h > 0 ? h + ':' : '') + ("" + m).leftPad('0', 2) + ':' + ("" + s).leftPad('0', 2);
		}
	</script>
</div>
</body>
</html>
