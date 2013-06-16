SilverStrap
===========

A [SilverStripe](http://www.silverstripe.org/) theme based on the
[Bootstrap](http://twitter.github.io/bootstrap/) front-end framework.
It should work out of the box on basic sites, so you can drop it into
your `themes` folder, enable it (either programmatically by using
`SSViewer::set_theme('silverstrap')` or by switching it in the CMS) and
check how your new site look.

Features
--------

* Should work out of the box.
* By leveraging the
  [silverstripe-autotoc](http://dev.entidi.com/p/silverstripe-autotoc/)
  module, the table of contents can be generated dinamically for every
  page by inspecting the `<h1>..<h6>` tags of the page content. Your
  site will gain table of contents for free.
* Proper support for pages nested at arbitrary levels.
* Quite extensible and customizable.

Accessing parent pages
----------------------

The default implementation provides support for custom nested levels
in *.navlist* but does not provide a way to access the parent pages, as
commonly provided by vanilla SilverStripe. In other words, if you have
subpages under `yoursite/contacts/` you can access them but there is no
easy way to access `yoursite/contacts/`.

To alleviate the problems a *Sitemap* of the first two levels is put
before the footer. This does not resolve the problem for further levels,
though.

To be able to access the parent pages directly from *.navlist* you must
override `NavbarItem.ss` and add a fixed item at the beginning of the
`<ul>` list, right before looping on $Children:

    <li class="$LinkingMode">
        <a href="$Link.ATT" title="<%t Silverstrap.GOTO page=$Title.ATT %>">$Title</a>
    </li>

Overriding bootstrap.css
------------------------

Let's say you want to use a custom Bootstrap theme, such as the ones
provided by [Bootswatch](http://bootswatch.com/): you can download and
save the CSS in `silverstrap/css/bootstrap.css`. It works, but will
override the default CSS provided by silverstrap... and this is bad.
You loose the possibility to update silverstrap with a `git pull`.

Instead, you can use the SilverStripe template trick used by
[silverstripe-treeish](http://dev.entidi.com/p/silverstripe-treeish/)
to use a different CSS file:

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
