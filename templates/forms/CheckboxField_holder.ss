<div class="form-group $HolderClasses<% if $Message %> error<% end_if %>">
	<div class="col-sm-offset-3 col-sm-6">
		<div class="checkbox">
			<label>
				$Field
				$Title
			</label><% if $Message %>
			<span class="help-block">$Message</span><% end_if %>
		</div>
	</div>
</div>
