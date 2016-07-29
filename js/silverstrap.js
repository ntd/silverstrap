var silverstrap = {
  carousel: {
    interval: 8000
  },
  scrollspy: {
    target: '#ss-toc'
  },
  affix: {
    offset: {
      top: $('#ss-toc').data('offset-top') || 72,
      bottom: $('#ss-toc').data('offset-bottom') || 350
    }
  },
  colorbox: {
    rel: 'group',
    maxWidth: '98%',
    maxHeight: '98%',
    photo: true
  },
  fotorama: {
    nav: 'thumbs',
    click: ! $.isFunction($.colorbox),
    allowfullscreen: 'native',
    width: '100%'
  }
};

$(document).ready(function () {
  var $subject;

  // Enable help tooltips for form elements
  $subject = $('[data-toggle="tooltip"]');
  $subject.tooltip({
    placement: function () {
      return $(window).width() >= 992 ? 'right' : 'bottom';
    }
  });

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
          if (! transition)
            $.colorbox($.extend({
              href: extra.frame.full,
              title: function () {
                return extra.frame.summary || extra.frame.caption;
              }}, silverstrap.colorbox));
        });
    });
  }

  // Add ColorBox support for zooming images (silverstrap)
  $subject = $('.zoom');
  if ($subject.length && $.isFunction($.colorbox)) {
    $subject.colorbox(silverstrap.colorbox);
  }

  // Customize the behavior of the table of contents (silverstripe-autotoc)
  $subject = $('#ss-toc');
  if ($subject.length && $.isFunction($.affix)) {
    $('body').scrollspy(silverstrap.scrollspy);
    $subject.affix(silverstrap.affix);
  }

  // Enable the Bootstrap carousel (silverstripe-carousel)
  $subject = $('#ss-carousel');
  if ($subject.length && $.isFunction($.carousel)) {
    $subject.carousel(silverstrap.carousel);
  }

  // Enable the Fotorama gallery (silverstripe-gallery)
  $subject = $('#ss-gallery');
  if ($subject.length && $.isFunction($.Fotorama)) {
    $subject.fotorama(silverstrap.fotorama);
  }
});
