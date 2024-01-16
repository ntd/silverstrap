Usage
-----

Complete layout customization is provided by the related [Silverstripe
module](https://github.com/ntd/silverstrap-module): see its
documentation for further details.

External dependencies
---------------------

Silverstrap depends on some external project:

* _Bootstrap_, the main dependency;
* _JQuery_, needed by Bootstrap;
* _Colorbox_, for zooming images;
* _Fotorama_, for photo galleries.

_Colorbox_ and _Fotorama_ are not strictly required but are useful when
silverstrap is used in conjunction with other modules (e.g.
`entidi/silverstripe-gallery`). In any case all those components are included
out of the box by the base templates.

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

Instead you can use the Silverstripe template trick used by the
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
commonly provided by vanilla Silverstripe. In other words, if you have
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
