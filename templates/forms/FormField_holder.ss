<% include CGOpening %><% if $Title %>
	<label class="control-label"<% if $ID %> for="$ID"<% end_if %>>$Title</label><% end_if %>
	<div class="controls">
		$Field
	</div><% if $RightTitle %>
	<label class="control-label" for="$ID">$RightTitle</label><% end_if %>
<% include CGClosing %>
