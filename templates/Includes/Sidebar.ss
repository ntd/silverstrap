	<ul class="nav nav-list affix">
		<li class="nav-header">$Level(1).Title</li><% loop Menu(2) %>
		<li class="$LinkingMode"><a href="$Link" title="$Title">$MenuTitle</a></li><% end_loop %>
	</ul>
