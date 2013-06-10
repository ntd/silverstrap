<div class="row"><% if Menu(2) %>
	<aside class="span3">
		<% include Sidebar %>
	</aside>
	<div class="span9"><% else %>
	<div class="span12"><% end_if %>
		<main id="content" role="main"><% if Title %>
			<div class="page-header"><h1>$Title</h1></div><% end_if %>
			$Content
		</main>
		$Form
	</div>
</div>
