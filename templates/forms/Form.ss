<% if $IncludeFormTag %>
<form class="form-horizontal $extraClass" $AttributesHTML role="form"><% end_if %><% if $Message %>
	<div id="{$FormName}_error" class="alert $MessageType">
		<button type="button" class="close" data-dismiss="alert">&times;</button>
		$Message
	</div><% else %>
	<div id="{$FormName}_error" class="alert hide $MessageType"></div><% end_if %>

	<fieldset><% if $Legend %>
		<legend>$Legend</legend><% end_if %><% loop $Fields %>
		$FieldHolder<% end_loop %>
	</fieldset><% if $Actions %>
	<div class="form-group">
		<div class="col-sm-offset-3 col-sm-9"><% loop $Actions %>
			$Field<% end_loop %>
		</div>
	</div><% end_if %><% if $IncludeFormTag %>
</form><% end_if %>
