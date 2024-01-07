SilverStrap
===========

A [SilverStripe](http://www.silverstripe.org/) theme based on the
[Bootstrap](http://twitter.github.io/bootstrap/) front-end framework.
It should work out of the box on basic sites, so you can drop it into
your `themes` folder, enable it (either programmatically by using
`SSViewer::set_theme('silverstrap')` or by switching it in the CMS) and
check how your new site look.

The ss3-bs2 branch is in maintenance mode and it is based on the
deprecated (and no longer officially supported) Bootstrap version 2.
The ss3-bs3 branch, released as silverstrap-2.x.x, is based
on Bootstrap 3.

Installation
------------

With composer:

    composer require entidi/silverstrap

Without composer, download [the tarball](https://github.com/ntd/silverstrap/releases)
and unpack it under the `themes` directory.

Features
--------

* Composer ready.
* No dependency on SASS/LESS/whatever. This is a plain SilverStripe
  theme: just unpack the tarball under `themes/` or install via
  `composer` and enable it.
* Out of the box support for silverstripe blog and comments module.
* Out of the box support for dynamically generated tables of contents.
  If you install the [silverstripe-autotoc](http://dev.entidi.com/p/silverstripe-autotoc/)
  module, silverstrap will generate on the fly the table of contents of
  the current page (if possible) and it will present it in a _.navlist_
  on the right side. Your site will gain table of contents for free.
* Out of the box support for the
  [silverstripe-carousel](http://dev.entidi.com/p/silverstripe-carousel/)
  module.
* Out of the box support for the
  [silverstripe-gallery](http://dev.entidi.com/p/silverstripe-gallery/)
  module.
* Proper support for menu with pages nested at arbitrary levels.
* Quite extensible and customizable. This can be done by _overriding_
  the default implementation instead of editing it: check the section
  *Overriding silverstrap* for further details.
* Different components inclusion methods. By default external components
  (such as JQuery and Bootstrap) are fetched from the jsdelivr CDN
  network but a couple of alternate methods are provided. See the
  section *External dependencies* for details.
* JavaScript configuration can be overriden: see *Customizing JavaScript
  modules*.

External dependencies
---------------------

Silverstrap depends on some external project:

* _Bootstrap_, the main dependency;
* _JQuery_, needed by Bootstrap;
* _Colorbox_, for zooming images;
* _Fotorama_, for photo galleries.

_Colorbox_ and _Fotorama_ are not strictly required but are useful when
silverstrap is used in conjunction with other modules. In any case,
all those components are included out of the box by the base templates.

By default the resources are fetched from the jsdelivr CDN network (see
the `SilverstrapJsdelivr.ss` template) but a couple of alternatives are
included:

* `SilverstrapOffline.ss` fetches the resources directly from the
  filesystem, making the site usable when disconnected from internet;
* `SilverstrapModular.ss` fetches the resources from jsdelivr too but it
  is modular, e.g. every dependency has its own template.

Depending on your requirements, you can prefer one of these methods
instead of the default one. If this is the case, just override
`Silverstrap.ss` to include the offline or the modular version. Consult
the next session to know how to override templates.

Customizing JavaScript modules
------------------------------

`silverstrap.js` defines the global object `silverstrap` where all the
default JavaScript settings are stored.

To override this settings (i.e. to change the out of the box behavior of
the JavaScript modules) you should change this global object after
including `silverstrap.js`, e.g.:

        <script src="themes/silverstrap/js/silverstrap.js></script>
        <script>
          // Disable fullscreen in fotorama
          silverstrap.fotorama.allowfullscreen = false;
          // Colorbox zoom to 50% max
          silverstrap.colorbox.maxWidth = '50%';
          silverstrap.colorbox.maxHeight = '50%';
        </script>

Overriding silverstrap
----------------------

Let's say you want to work off-line so you need to not depend on a CDN,
as required out of the box by silverstrap. You can just modify
`silverstrap/templates/Includes/Silverstrap.ss` and change the code to
include `SilverstrapOffline` instead of `SilverstrapJsdelivr`. Although
this works, it will change the silverstrap directory tree... and this
is very bad: you'll loose the possibility to update silverstrap with a
`git pull` or by leveraging `composer`.

Instead you can use the SilverStripe template trick used by the
[silverstripe-treeish](http://dev.entidi.com/p/silverstripe-treeish/)
project, i.e. override any template *without* touching a single byte of
the original folder:

1. install silverstrap under `themes` (as usual): `composer` will do
   this for you;
2. create a `silverstrap_Page` directory at the same level of the
   `silverstrap` directory: any page of type `Page` (hence the whole
   site) will look for templates in this directory first;
3. copy any template you want to override from `silverstrap` to
   `silverstrap_Page`, retaining its relative path;
4. modify in any way you like whatever under `silverstrap_Page`;
5. flush and test.

In the case outlined by this section, you can copy `Silverstrap.ss` into
`silverstrap_Page/templates/Includes/Silverstrap.ss` and change its
content to:

       <% include SilverstrapOffline %>

This trick can be used to override pretty much everything, such as to
enhance the default page template, to set the favicon, to add or remove
a feature or to put a watermark on every page. The templates in
silverstrap are quite fragmented to make the overriding easier. For
example, [silverstripe-cerulean](http://dev.entidi.com/p/silverstripe-cerulean/)
is an extension to Silverstrap that uses this very same approach to
override the default plain Bootstrap theme with the
[Cerulean](http://bootswatch.com/cerulean/) one.

Accessing parent pages
----------------------

The default implementation provides support for custom nested levels
in _.navbar_ but does not provide a way to access the parent pages, as
commonly provided by vanilla SilverStripe. In other words, if you have
subpages under `yoursite/contacts/` you can access them but there is no
easy way to access `yoursite/contacts/` (apart from directly write the
URL).

To alleviate the problems a *Sitemap* of the first two levels is put
by default before the footer. This does not resolve the problem for
further levels though.

To be able to access the parent pages directly from the _.navbar_ you
can override `NavbarSubmenu.ss` and add a fixed item at the beginning
of the `<ul>` list, right before looping on `$Children`. The
`NavbarSubmenuAccessible.ss` file does exactly that, so you should use
it instead of the original template. By leveraging the override trick
explained in the previous section, you can accomplish this by creating
`themes/silverstrap_Page/templates/Includes/NavbarItem.ss` under your
website directory with the following content:

    <% if $Children %><% if $Parent %>
        <% include NavbarSubmenuAccessible %><% else %>
        <% include NavbarMenu %><% end_if %>
    <% else %>
        <% include NavbarLink %>
    <% end_if %>

Support
-------

This project has been developed by [ntd](mailto:ntd@entidi.it). Its
[home page](http://silverstripe.entidi.com/themes/) is shared by other
[SilverStripe](http://www.silverstripe.org/) modules and themes.

To check out the code, report issues or propose enhancements, go to the
[dedicated tracker](http://dev.entidi.com/p/silverstripe-carousel).
[dedicated tracker](http://dev.entidi.com/p/silverstrap/).
Alternatively, you can do the same things by leveraging the official
[github repository](https://github.com/ntd/silverstrap).
