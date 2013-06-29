<% if $Autotoc %>
	<aside class="span3 toc">
		<ul class="nav nav-list affix">
			<li class="nav-header"><%t Silverstrap.TOC %></li>
			<%-- Include only the first level of the TOC --%><% loop $Autotoc.Children %>
			<li><a href="#$Id.ATT" data-target="#$Id.ATT">$Title</a></li><% end_loop %>
		</ul>
	</aside>
	<div class="span9">
<% else %>
	<div class="span12">
<% end_if %>
		<main id="content" role="main"><% if $Title %>
			<div class="page-header"><h1>$Title</h1></div><% end_if %>
			$Content
		</main>
		$Form
	</div>
