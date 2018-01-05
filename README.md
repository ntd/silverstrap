SilverStrap
===========

A [SilverStripe](http://www.silverstripe.org/) theme based on the
[Bootstrap](http://twitter.github.io/bootstrap/) front-end framework. It should
work out of the box on basic sites, i.e. by installing and enabling it you
should already see how it looks a SilverStrap based website.

The `boostrap2` branch is in maintenance mode and it is based on the
SilverStripe 3 and Bootstrap 2.
The master and dev branches, released as silverstrap-2.x.x, are based
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
* No dependency on SASS/LESS/whatever.
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


Other documentation
-------------------

* [Usage](docs/en/usage.md)
* [Contributing](CONTRIBUTING.md)
* [Code of Conduct](https://docs.silverstripe.org/en/contributing/code_of_conduct)
* [BSD license](LICENSE.md)
* [ChangeLog](CHANGELOG.md)
* [Support](docs/en/support.md)
