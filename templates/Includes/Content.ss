<div class="row"><% if Menu(2) %>
	<div class="span3">
		<% include Sidebar %>
	</div>
	<div class="span9"><% else %>
	<div class="span12"><% end_if %>
		<div id="content" role="main"><% if Title %>
			<div class="page-header"><h1>$Title</h1></div><% end_if %>
			$Content
			$Form
		</div>
	</div>
</div>
