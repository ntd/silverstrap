<% include CGOpening %><% if $Title %>
	<label class="control-label" for="$ID">$Title</label><% end_if %>
	<div class="controls"><% loop $FieldList %>
		$SmallFieldHolder<% end_loop %>
	</div><% if $RightTitle %>
	<label class="control-label" for="$ID">$RightTitle</label><% end_if %>
<% include CGClosing %>
