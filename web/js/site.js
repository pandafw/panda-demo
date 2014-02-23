$(function() {
	$('[data-toggle=offcanvas]').click(function() {
		$('.row-offcanvas').toggleClass('active');
	});
	$('[data-toggle=tooltip]').tooltip();
	$('[data-toggle=popover]').popover();
});

$(function() {
	s_init();
	if (window.onPageLoad) {
		//invoke onPageLoad function
		window.onPageLoad();
	}
});
