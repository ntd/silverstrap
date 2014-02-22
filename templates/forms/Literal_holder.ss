<div class="form-group"><% if $Title %>
	<label class="control-label col-sm-3" for="$ID">$Title</label><% end_if %>
	<div class="<% if not $Title %>col-sm-offset-3 <% end_if %>col-sm-9">
		$Field
	</div>
</div>
