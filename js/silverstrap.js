$(document).ready(function() {
    // Add ColorBox support for zooming images, if required
    if ($.isFunction($.colorbox)) {
	$('.zoom').colorbox({
	    rel: 'group',
	    photo: true		// Do not parse the URL extension for
				// image detection
	});
    }

    // Enable the Bootstrap carousel with default delay, if it exists
    if ($('#ss-carousel').length) {
	$('#ss-carousel').carousel({
	    interval: 8000
	});
    }

    // Customize the behavior of the table of contents, if it exists
    if ($('#ss-toc').length) {
	$('body').scrollspy({
	    target: '#ss-toc'
	});
	$('#ss-toc').affix({
	    offset: {
		top: 72,	// Default value for plain silverstrap
		bottom: 350	// Custom value: change if needed
	    }
	});
    }
});
