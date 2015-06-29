$(document).ready(function() {
	var $subject;

	// Enable colorbox support on Fotorama frames
	if ($.isFunction($.colorbox) && $.isFunction($.Fotorama)) {
		var transition;
		$(document).on('fotorama:show', function () {
			transition = true;
		})
		.on('fotorama:showend', function () {
			transition = false;
		})
		.on('fotorama:load', function (ev, fotorama, extra) {
			extra.frame['$stageFrame'].find('.fotorama__img').not('.fotorama__img--full')
				.css('cursor', 'zoom-in')
				.on('click', function () {
					if (transition)
						return;
					$.colorbox({
						href: extra.frame.full,
						title: extra.frame.caption,
						maxWidth: '98%',
						maxHeight: '98%',
						photo: true
					});
				});
		});
	}

	// Add ColorBox support for zooming images (silverstrap)
	$subject = $('.zoom');
	if ($subject.length && $.isFunction($.colorbox)) {
		$subject.colorbox({
			rel: 'group',
			maxWidth: '98%',
			maxHeight: '98%',
			photo: true
		});
	}

	// Customize the behavior of the table of contents (silverstripe-autotoc)
	$subject = $('#ss-toc');
	if ($subject.length && $.isFunction($.affix)) {
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

	// Enable the Bootstrap carousel (silverstripe-carousel)
	$subject = $('#ss-carousel');
	if ($subject.length && $.isFunction($.carousel)) {
		$subject.carousel({
			interval: 8000
		});
	}

	// Enable the Fotorama gallery (silverstripe-gallery)
	$subject = $('#ss-gallery');
	if ($subject.length && $.isFunction($.Fotorama)) {
		$subject.fotorama({

			nav: 'thumbs',
			click: ! $.isFunction($.colorbox),
			allowfullscreen: 'native',
			width: '100%'
		});
	}
});
