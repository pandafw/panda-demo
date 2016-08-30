<html>
<head>
	<title>Multi file upload</title>
</head>
<body>

<div class="p-section a_multifileupload">
	<div class="p-header">
		<h3><i class="fa fa-cloud-upload"></i> Multifile upload</h3>
	</div>

	<#include "/action-alert.ftl"/>

	<form>
		<input id="ufiles" type="file" class="p-uploader-file form-control" name="tests" size="30" multiple>
	</form>
	
	<div id="up" class="p-uploader-progress progress progress-striped" style="display: none"><div class="progress-bar progress-bar-info" style="width: 0%"></div></div>
	<div id="ue" style="display: none"></div>
	
	<div id="ud"></div>

	<script type="text/javascript">
		var loading = false;
		
		function _filesize(fs) {
			var sz = String.formatSize(fs);
			if (sz.length > 0) {
				sz = '(' + sz + ')';
			}
			return sz;
		}


		function _info(uid, ufn, ufs, uct) {
			ufn = ufn || uid;

			$('#ud').append('<hr>');
			if (uid) {
				var ps = {};
					ps['id'] = uid;
				var url = 'tmp/download?' + '?' + $.param(ps);
				$('#ud').append('<a href="' + url + '">'
						+ '<i class="fa fa-check p-uploader-icon"></i> '
						+ ufn + ' ' + _filesize(ufs)
						+ '</a>');
			}
			else {
				$('#ud').append('<span><i class="fa fa-check p-uploader-icon"></i>'
						+ ufn + ' ' + _filesize(ufs)
						+ '</span>');
			}

			if (String.startsWith(uct, 'image/')) {
				if (uid) {
					var ps = {};
					ps['id'] = uid;
					var url = 'tmp/download?' + $.param(ps);
					$('#ud').append('<img class="img-thumbnail" src="' + url + '"></img>');
				}
			}
		}

		function _progress(v) {
			$('#ip').children('.progress-bar').css({width: v + '%'});
		}

		function _upload() {
			if (loading || $('#ufiles').val() == "") {
				return;
			}
			loading = true;

			$('#ufiles').hide();
			$('#up').show();
			$('#ue').hide().empty();

			var progress = 0;
			
			_progress(progress);

			var timer = setInterval(function() {
				_progress(progress++);
				if (progress >= 90) {
					if (timer) {
						clearInterval(timer);
						timer = null;
					}
				}
			}, 20);

			function _endUpload() {
				_progress(100);
				$('#up').hide();
				$('#ufiles').val("").show();
				loading = false;
			}

			var file = {}; file['files'] = $('#ufiles'); 
			$.ajaf({
				url: "tmp/uploads",
				data: null,
				file: file,
				dataType: 'json',
				success: function(d) {
					_endUpload();
					if (d.success) {
						var r = d.result;
						for (var i = 0; i < r.length; i++) {
							_info(r[i].id, r[i].name, r[i].size, r[i].contentType);
						}
					}
					else {
						if (d.alerts) {
							$('#ue').palert('add', d.alerts);
						}
						if (d.exception) {
							var e = d.exception;
							$('#ue').palert('error', (e.message + (e.stackTrace ? ("\n" + e.stackTrace) : "")).escapePhtml());
						}
						$('#ue').slideDown();
					}
				},
				error: function(xhr, status, e) {
					_endUpload();
					$('#ue').palert('error', (e ? (e + "").escapePhtml() : (xhr ? xhr.responseText : status)));
					$('#ue').slideDown();
				}
			});
		}

		function onPageLoad() {
			$('#ufiles').change(function() { 
				setTimeout(_upload, 10); 
			});
		}
	</script>
</div>

</body>
</html>