<% if $Children %>
	<li class="$Mode">
		<a href="$Link.ATT" class="dropdown-toggle" data-toggle="dropdown">
			$Title<% if $Mode=="dropdown" %>
			<b class="caret"></b><% end_if %>
		</a>
		<ul class="dropdown-menu"><% loop $Children %>
			<% include NavbarItem Mode="dropdown-submenu" %><% end_loop %>
		</ul>
	</li>
<% else %>
	<li class="$LinkingMode">
		<a href="$Link.ATT" title="<%t Silverstrap.GOTO page=$Title.ATT %>">$Title</a>
	</li>
<% end_if %>
