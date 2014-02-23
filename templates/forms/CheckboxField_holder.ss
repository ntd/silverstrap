<div class="form-group $HolderClasses<% if $Message %> has-error<% end_if %>">
	<div class="col-sm-offset-3 col-sm-6">
		<div class="checkbox">
			<label>
				$Field
				$Title
			</label><% if $Message %>
			<p class="help-block">$Message</p><% end_if %>
		</div>
	</div>
</div>
