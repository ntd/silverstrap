<header class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			<a class="brand" href="/">$SiteConfig.Title</a><% if Menu(1) %>
			<ul class="nav"><% loop Menu(1) %>
				<li class="$LinkingMode"><a href="$Link" title="Vai alla pagina '$Title'">$MenuTitle</a></li><% end_loop %>
			</ul><% end_if %>
		</div>
	</div>
</header>
