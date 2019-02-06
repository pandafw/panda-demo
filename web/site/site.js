$(function() {
	// enable script cache
	$.ajaxPrefilter(function(options, org, xhr) {
		if (options.dataType == 'script' || org.dataType == 'script') {
			options.cache = true;
		}
	});
	
	$('[data-toggle=offcanvas]').click(function() {
		$('.row-offcanvas').toggleClass('active');
	});
	$('[data-toggle=tooltip]').tooltip();
	$('[data-toggle=popover]').popover();

	$('#sidenav i').each(function() {
		$(this).attr('title', $(this).next('span').text());
	})
	s_init();

	// google analytics
	s_google_analytics(site);
});

//------------------------------------------------------
// google analytics
//
function s_google_analytics(c) {
	if (c.google_analytics) {
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

		ga('create', c.google_analytics, 'auto');
		ga('send', 'pageview');
	}
}

