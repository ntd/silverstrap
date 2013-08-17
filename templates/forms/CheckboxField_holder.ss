<div class="control-group<% if $Message %> error<% end_if %>">
	<div class="controls">
		<label class="checkbox">
			$Field
			$Title
		</label><% if $Message %>
		<span class="help-block">$Message</span><% end_if %>
	</div>
</div>
