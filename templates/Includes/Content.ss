<div class="row"><% if $Autotoc %>
	<aside class="span3">
		<ul class="nav nav-list affix">
			<li class="nav-header"><%t Silverstrap.TOC %></li>
			<% include Autotoc %>
		</ul>
	</aside>
	<div class="span9"><% else %>
	<div class="span12"><% end_if %>
		<main id="content" role="main"><% if $Title %>
			<div class="page-header"><h1>$Title</h1></div><% end_if %>
			$Content
		</main>
		$Form
	</div>
</div>
