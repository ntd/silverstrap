<header class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			<a class="brand" href="/">$SiteConfig.Title</a><% cached 'navbar', List(Page).max(LastEdited) %><% if $Menu(1) %>
			<ul class="nav"><% loop $Menu(1) %>
				<% include NavbarItem %><% end_loop %>
			</ul><% end_if %><% end_cached %>
			$SearchForm
		</div>
	</div>
</header>
