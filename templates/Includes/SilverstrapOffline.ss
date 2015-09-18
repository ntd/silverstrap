<%--
    List of components always loaded by default in silverstrap.
    The resources are loaded from the filesystem.

    It is useful for disconnected web development: in production
    SilverstripeJsdelivr.ss is still the preferred solution.
 --%>
<% require themedCSS("bootstrap.min") %>
<% require themedCSS("fotorama.min") %>
<% require themedCSS("silverstrap") %>

<% require javascript("themes/silverstrap/js/jquery.min.js") %>
<% require javascript("themes/silverstrap/js/bootstrap.min.js") %>
<% require javascript("themes/silverstrap/js/jquery.colorbox-min.js") %>
<% require javascript("themes/silverstrap/js/fotorama.min.js") %>
<% require javascript("themes/silverstrap/js/silverstrap.js") %>
