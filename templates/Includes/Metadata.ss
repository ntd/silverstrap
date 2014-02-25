<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%--
    Instead of using a non-standard tag [1] for making IE happy
    (hence invalidating the page), do this at web server level [2].
    [1] <meta http-equiv="X-UA-Compatible" content="IE=edge">
    [2] For apache, use `Header set X-UA-Compatible "IE=edge"'
--%>
<title>$Title</title><% if $MetaDescription %>
<meta name="description" content="$MetaDescription.ATT"><% end_if %><% if $MetaKeywords %>
<meta name="keywords" content="$MetaKeywords.ATT"><% end_if %>
$ExtraMeta
