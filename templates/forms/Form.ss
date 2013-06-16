<% if $IncludeFormTag %>
<form class="form-horizontal" $AttributesHTML><% end_if %><% if $Message %>
	<div id="{$FormName}_error" class="alert $MessageType">
		<button type="button" class="close" data-dismiss="alert">&times;</button>
		$Message
	</div><% else %>
	<div id="{$FormName}_error" class="alert $MessageType" style="display: none"></div><% end_if %>

	<fieldset><% if $Legend %>
		<legend>$Legend</legend><% end_if %><% loop $Fields %>
		$FieldHolder<% end_loop %>
	</fieldset>
	<div class="clearfix"></div><% if $Actions %>
	<div class="control-group">
		<div class="form-actions"><% loop $Actions %>
			$Field<% end_loop %>
		</div>
	</div><% end_if %><% if $IncludeFormTag %>
</form><% end_if %>
