<$Tag class="$extraClass"><% if $Tag == 'fieldset' && $Legend %>
	<legend>$Legend</legend><% end_if %><% loop $FieldList %><% if $ColumnCount %>
	<div class="column-{$ColumnCount} $FirstLast">
		$Field
	</div><% else %>
	$Field<% end_if %><% end_loop %>
</$Tag>
