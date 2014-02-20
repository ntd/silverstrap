SilverStrap
===========

A [SilverStripe](http://www.silverstripe.org/) theme based on the
[Bootstrap](http://twitter.github.io/bootstrap/) front-end framework.
It should work out of the box on basic sites, so you can drop it into
your `themes` folder, enable it (either programmatically by using
`SSViewer::set_theme('silverstrap')` or by switching it in the CMS) and
check how your new site look.

The master-1.0 branch is in maintenance mode and it is based on the
deprecated (and no longer officially supported) Bootstrap version 2.
The master and dev branches, released as silverstrap-2.x.x, are based
on Bootstrap 3.

Features
--------

* Should work out of the box.
* No dependency on SASS or Ruby. This is a plain SilverStripe theme:
  just unpack the tarball under `themes/` and enable it.
* Out of the box support for dynamically generated tables of contents.
  If you install the [silverstripe-autotoc](http://dev.entidi.com/p/silverstripe-autotoc/)
  module, silverstrap will generate on the fly the table of contents of
  the current page (if possible) and it will present it in a _.navlist_
  on the left side. Your site will gain table of contents for free.
* Proper support for pages nested at arbitrary levels.
* Quite extensible and customizable. This can be done by *overriding*
  the default implementation instead of editing it: check the following
  section for further details.

Overriding silverstrap
----------------------

Let's say you want to use a custom Bootstrap CSS, such as the ones
provided by [Bootswatch](http://bootswatch.com/). You can download and
store it over the default CSS found in `silverstrap/css/bootstrap.css`.
This works but it will overwrite the default CSS provided by
silverstrap... and this is bad. You loose the possibility to update
silverstrap with a `git pull`.

Instead, you can use the SilverStripe template trick used by
[silverstripe-treeish](http://dev.entidi.com/p/silverstripe-treeish/)
to override the templates *without touching a byte* of the original
silverstrap folder:

1. put silverstrap under `themes` (as usual).
2. create a `silverstrap_Page` directory at the same directory level:
   any page of type `Page` (hence the whole site) will look in this
   directory before for every template;
3. copy the custom bootstrap CSS in some place accessible by the web
   server, e.g. under `themes/silverstrap_Page/css/mybootstrap.css`;
4. create `themes/silverstrap_Page/templates/Includes/Bootstrap.ss`
   and put the following template code in it:

    <%-- Override the default bootstrap theme with the custom one --%>
    <% require CSS(themes/silverstrap_Page/css/mybootstrap.css) %>
    <% require themedCSS(bootstrap-responsive) %>
    <script src="$ThemeDir/js/bootstrap.min.js"></script>


[silverstripe-cerulean](http://dev.entidi.com/p/silverstripe-cerulean/)
is an extension to Silverstrap that uses this very same approach to
override the Bootstrap theme Silverstrap is based on with
[Cerulean](http://bootswatch.com/cerulean/). You can check the
[source code](http://dev.entidi.com/p/silverstripe-cerulean/source/tree/master/)
for technical details.

This trick can be used to override anything, such as to enhance the
default page template, to set the favicon, to add or remove a feature
or to put a watermark on every page. The templates in silverstrap are
quite fragmented to make it easier to change only a single aspect.

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

For bug reports or feature requests, please use the dedicated
[development tracker](http://dev.entidi.com/p/silverstrap/).
