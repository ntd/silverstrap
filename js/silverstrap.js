$(document).ready(function() {
    var $subject;

    // Add ColorBox support for zooming images, if required
    if ($.isFunction($.colorbox)) {
	$('.zoom').colorbox({
	    rel: 'group',
	    photo: true		// Do not parse the URL extension for
				// image detection
	});
    }

    // Enable the Bootstrap carousel with default delay, if it exists
    $subject = $('#ss-carousel');
    if ($subject.length) {
	$subject.carousel({
	    interval: 8000
	});
    }

    // Customize the behavior of the table of contents, if it exists
    $subject = $('#ss-toc');
    if ($subject.length) {
	$('body').scrollspy({
	    target: '#ss-toc'
	});
	$subject.affix({
	    offset: {
		top: $subject.attr('data-offset-top') || 72,
		bottom: $subject.attr('data-offset-bottom') || 350
	    }
	});
    }
});
