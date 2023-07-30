//------------------------------------------------------
function s_setbase(c) {
	c = $.extend(site, c);
	$.cookie.defaults = c.cookie || {};
	return site;
}

function s_meta_props() {
	var m = {};
	$('meta').each(function() {
		var $t = $(this), a = $t.attr('property');
		if (a && a.substring(0, 2) == 's:') {
			m[a.substring(2)] = $t.attr('content');
		}
	});
	return m;
};

function s_setLang(v) {
	location.href = $.addQueryParams(location.href, { '__locale': v });
}

//------------------------------------------------------
//site vars
//
var site = {
	statics: '/static',
	page_loading: function(timeout) {
		$('body').loadmask({ mask: false, fixed: true, timeout: timeout || 1000 });
	},
	page_sort: function(name, dir) {
		site.page_loading();
		location.href = $.addQueryParams(location.href, { 's.c': name, 's.d': dir});
		return false;
	},
	page_sort_reverse: function(name, dir) {
		return site.page_sort(name, dir.toLowerCase() == "asc" ? "desc" : "asc");
	},
	page_goto_start: function(s) {
		site.page_loading();
		location.href = $.addQueryParams(location.href, { 'p.s': s });
		return false;
	},
	page_goto_page: function(p) {
		site.page_loading();
		location.href = $.addQueryParams(location.href, { 'p.p': p });
		return false;
	},
	page_limit: function(l) {
		site.page_loading();
		location.href = $.addQueryParams(location.href, { 'p.l': l });
		return false;
	}
};

//set default
s_setbase({
	base: '',
	cookie: { expires: 180 }
});

//------------------------------------------------------
$(function() {
	// enable script cache
	$.enableScriptCache();
	
	$('[data-toggle=offcanvas]').click(function() {
		$('.row-offcanvas').toggleClass('active');
	});
	$('[data-toggle=tooltip]').tooltip();
	$('[data-toggle=popover]').popover();

	$('#sidenavi i').each(function() {
		$(this).attr('title', $(this).next('span').text());
	})

	s_setbase($.extend({ body: 'body' }, panda.meta_props()));

	// google analytics
	s_google_analytics(site);
});

//------------------------------------------------------
// google analytics
//
function s_google_analytics(c) {
	if (c.google_analytics && c.google_analytics != "${GA}") {
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

		ga('create', c.google_analytics, 'auto');
		ga('send', 'pageview');
	}
}

