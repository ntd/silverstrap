<!DOCTYPE html>
<html lang="$ContentLocale">

<head>
<% include Metadata %>
<% base_tag %>
<% include Favicon %>
<% include Html5Shiv %>
</head>

<%-- The template is silverstripe-autotoc ready --%>
<body$BodyAutotoc>
<% cached 'Page', List(Page).max(LastEdited) %>
<% include Navbar %>
<% uncached %>$Layout<% end_uncached %>
<% include Sitemap %>
<% end_cached %>
<% include Footer %>
<%-- List of components loaded by this website --%>
<% include JQuery %>
<% include Bootstrap %>
<% include Colorbox %>
<% require themedCSS(silverstrap) %>
</body>

</html>
