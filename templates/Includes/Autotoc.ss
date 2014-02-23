<aside id="ss-toc" role="complementary">
	<ul class="nav nav-pills nav-stacked">
		<% include AutotocHeader %><% loop $Autotoc.Children %>
		<li><a href="#$Id.ATT" data-target="#$Id.ATT">$Title</a></li><% end_loop %>
	</ul>
</aside>
