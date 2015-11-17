<%--
    List of components always loaded by default in silverstrap.
    This is the modular approach.

    You can improve performances by leveraging CDNs. Furthermore, if you
    use jsdelivr [1], you can also fetch more files using a single HTTP
    request: see the SilverstrapJsdelivr.ss template.

    [1] https://github.com/jsdelivr/jsdelivr#load-multiple-files-with-single-http-request
 --%>
<% include JQuery %>
<% include Bootstrap %>
<% include Colorbox %>
<% include Fotorama %>
<% require themedCSS("silverstrap") %>
<% require javascript("themes/silverstrap/js/silverstrap.js") %>
