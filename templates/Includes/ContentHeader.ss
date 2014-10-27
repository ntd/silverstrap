<%--
    You can pass a custom string to be rendered as subtitle, e.g.:
    <% include ContentHeader subtitle=$MetaDescription %>
--%>
<% if $Title %>
<div class="page-header">
	<h1>
		$Title<% if $Subtitle %>
		<div><small>$Subtitle</small></div><% end_if %>
	</h1>
</div>
<% end_if %>
