SilverStrap
===========

A [Silverstripe](https://www.silverstripe.org/) theme based on the
[Bootstrap](http://getbootstrap.com/) front-end framework. It should
work out of the box on basic sites, i.e. by installing and enabling it you
should already see how it looks a SilverStrap based website.

The `ss3-bs2` branch is unmaintained and it is based on Silverstripe 3
and Bootstrap 2. The `ss3-bs3` branch is unmaintained and it is based on
Silverstripe 3 and Bootstrap 3. The `ss4-bs3` branch is in maintenance
mode and it is based on Silverstripe 4 and Bootstrap 3.

The `master` and `dev` branches are currently developed and target
Silverstripe 5 and Bootstrap 3.


Installation
------------

    composer require entidi/silverstrap


Features
--------

* No dependency on SASS/LESS/whatever.
* Out of the box support for Silverstripe blog and comments module.
* Out of the box support for dynamically generated tables of contents.
  If you install the [silverstripe-autotoc](https://github.com/ntd/silverstripe-autotoc)
  module, SilverStrap will generate on the fly the table of contents of
  the current page (if possible) and it will present it in a _.navlist_
  on the right side. Your site will gain table of contents for free.
* Out of the box support for the
  [silverstripe-carousel](https://github.com/ntd/silverstripe-carousel/)
  module.
* Out of the box support for the
  [silverstripe-gallery](https://github.com/ntd/silverstripe-gallery/)
  module.
* Proper support for menu with pages nested at arbitrary levels.
* Quite extensible and customizable. This can be done by _overriding_
  the default implementation instead of editing it: check the section
  *Overriding SilverStrap* for further details.
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
