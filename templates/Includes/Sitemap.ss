<% cached 'navbar', $List(Page).max(LastEdited), $List(Page).count() %>
<div class="well well-lg">
	<div class="container">
		<div class="row">
			<div class="col-md-12"><% loop $Menu(1) %><% if $Children %>
				<div class="col-md-3">
					<ul class="list-unstyled">
						<li><strong><a href="$Link" title="$Title.ATT">$MenuTitle</a></strong><li>
						<li class="divider"></li><% loop $Children %>
						<li><a href="$Link" title="$Title.ATT">$MenuTitle</a><li><% end_loop %>
					</ul>
				</div><% end_if %><% end_loop %>
			</div>
		</div>
	</div>
</div>
<% end_cached %>
