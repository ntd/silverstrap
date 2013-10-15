<!DOCTYPE html>
<html lang="$ContentLocale">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<% base_tag %>
	<% if $MetaDescription %><meta name="description" content="$MetaDescription.ATT"><% end_if %>
	<% if $MetaKeywords %><meta name="keywords" content="$MetaKeywords.ATT"><% end_if %>
	$ExtraMeta<title>$Title</title>
	<% include Favicon %>
	<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
</head>

<body data-spy="scroll" data-target=".toc">
	<% include Navbar %>
	$Layout
	<% include Sitemap %>
	<% include Footer %>
	<%-- List of components loaded by this web-site --%>
	<% include JQuery %>
	<% include Bootstrap %>
	<% include Colorbox %>
	<% require themedCSS(silverstrap) %>
</body>

</html>
