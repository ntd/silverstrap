$(document).ready(function() {
    // Add ColorBox support for zooming images, if required
    if ($.isFunction($.colorbox)) {
	$('.zoom').colorbox({ rel: 'group' });
    }

    // Customize the behavior of the table of contents, if it exists
    if ($('#ss-toc').length) {
	$('body').scrollspy({ target: '#ss-toc' });
	$('#ss-toc').affix({ offset: { top: 72 } });
    }
});
