<nav class="navbar navbar-default" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#ss-navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/">$SiteConfig.Title</a>
		</div><% cached 'navbar', $List(Page).max(LastEdited), $List(Page).count() %><% if $Menu(1) %>
		<div class="collapse navbar-collapse" id="ss-navbar">
			<ul class="nav navbar-nav"><% loop $Menu(1) %>
				<% include NavbarItem %><% end_loop %>
			</ul><% end_if %><% end_cached %>
			$SearchForm
		</div>
	</div>
</nav>
