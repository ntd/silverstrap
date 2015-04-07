<%--
    List of components always loaded by default in silverstrap. You
    can improve performances by leveraging jsdelivr [1] and combine all
    the includes (JQuery, Bootstrap and Colorbox) into two HTTP requests:
    see the SilverstrapCombined.ss template.

    By default they are not combined to allow the modular overriding of
    single templates.

    [1] https://github.com/jsdelivr/jsdelivr#load-multiple-files-with-single-http-request
 --%>
<% include JQuery %>
<% include Bootstrap %>
<% include Colorbox %>
<% require themedCSS(silverstrap) %>
<% require javascript(themes/silverstrap/js/silverstrap.js) %>
