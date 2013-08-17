<div class="control-group $HolderClasses<% if $Message %> error<% end_if %>"><% if $Title %>
	<label class="control-label" for="$ID">$Title</label><% end_if %>
	<div class="controls">
		$Field<% if $Message %>
		<span class="help-block">$Message</span><% end_if %>
	</div><% if $RightTitle %>
	<label class="control-label" for="$ID">$RightTitle</label><% end_if %>
</div>
