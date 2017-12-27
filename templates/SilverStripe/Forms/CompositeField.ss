<$Tag <% if $Tag == 'fieldset' %>$AttributesHTML<% else %>$getAttributesHTML('name')<% end_if %>><% if $Tag == 'fieldset' && $Legend %>
  <legend>$Legend</legend><% end_if %><% loop $FieldList %><% if $ColumnCount %>
  <div class="column-{$ColumnCount} $FirstLast">
    $Field.RAW
  </div><% else %>
  $Field.RAW<% end_if %><% end_loop %>
</$Tag>
