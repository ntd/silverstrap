<li class="dropdown">
	<a href="$Link.ATT" class="dropdown-toggle" data-toggle="dropdown">
		$MenuTitle
		<b class="caret"></b>
	</a>
	<ul class="dropdown-menu"><% loop $Children %>
		<% include NavbarItem %><% end_loop %>
	</ul>
</li>
