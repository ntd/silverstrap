<% if $IncludeFormTag %>
<form class="form-horizontal $extraClass" $getAttributesHTML('class')><% end_if %><% if $Message %>
  <div id="{$FormName}_error" class="alert alert-<% if $MessageType='good' %>success<% else_if $MessageType='bad' %>danger<% else %>warning<% end_if %>">
    <button type="button" class="close" data-dismiss="alert">&times;</button>
    $Message
  </div><% else %>
  <div id="{$FormName}_error" class="alert hide $MessageType"></div><% end_if %>
  <fieldset><% if $Legend %>
    <legend>$Legend</legend><% end_if %><% loop $Fields %>
    $FieldHolder<% end_loop %>
  </fieldset><% if $Actions %>
  <div class="$Silverstrap.group">
    <div class="$Silverstrap.no_label $Silverstrap.holder"><% loop $Actions %>
      $Field<% end_loop %>
    </div>
  </div><% end_if %><% if $IncludeFormTag %>
</form><% end_if %>
