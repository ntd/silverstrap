<div class="container">
	<div class="row ss-section"><% if $SideBarView %>
		<div class="pull-right col-md-3 hidden-print">
			$SideBarView
		</div><% end_if %>
		<div class="<% if $SideBarView %>col-md-9<% else %>col-xs-12<% end_if %>">
			<% include BlogPostContent %>
		</div>
	</div>
</div>
