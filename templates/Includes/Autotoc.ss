<aside id="ss-toc" role="complementary">
	<ul class="nav nav-pills nav-stacked">
		<li id="ss-toc-header" class="text-muted"><%t Silverstrap.TOC %></li>
		<%-- Include only the first level of the TOC --%><% loop $Autotoc.Children %>
		<li><a href="#$Id.ATT" data-target="#$Id.ATT">$Title</a></li><% end_loop %>
	</ul>
</aside>
