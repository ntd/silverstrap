<div class="form-group $HolderClasses<% if $Message %> has-error<% end_if %>"><% if $Title %>
	<label class="control-label col-sm-3" for="$ID">$Title</label><% end_if %>
	<div class="<% if not $Title %>col-sm-offset-3 <% end_if %>col-sm-6"><% loop $FieldList %>
		$SmallFieldHolder<% end_loop %><% if $Message %>
		<p class="help-block">$Message</p><% end_if %>
	</div><% if $RightTitle %>
	<label class="control-label col-sm-3" for="$ID">$RightTitle</label><% end_if %>
</div>
