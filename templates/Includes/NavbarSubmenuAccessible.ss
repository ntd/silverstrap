<li class="dropdown-submenu">
	<a href="$Link.ATT" class="dropdown-toggle" data-toggle="dropdown">
		$Title
	</a>
	<ul class="dropdown-menu">
		<% include NavbarLink %><% loop $Children %>
		<% include NavbarItem %><% end_loop %>
	</ul>
</li>
