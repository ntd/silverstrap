<% if $IncludeFormTag %>
<form class="form-horizontal $extraClass.RAW" $getAttributesHTML('class').RAW role="form"><% end_if %><% if $Message %>
  <div id="{$FormName}_error" class="alert alert-<% if $MessageType=='good' %>success<% else_if $MessageType=='bad' %>danger<% else %>warning<% end_if %>">
    <button type="button" class="close" data-dismiss="alert">&times;</button>
    $Message.XML
  </div><% else %>
  <div id="{$FormName}_error" class="alert hide $MessageType.RAW"></div><% end_if %>
  <fieldset><% if $Legend %>
    <legend>$Legend.XML</legend><% end_if %><% loop $Fields %>
    $FieldHolder.RAW<% end_loop %>
  </fieldset><% if $Actions %>
  <div class="$Silverstrap.group.RAW">
    <div class="$Silverstrap.no_label.RAW $Silverstrap.holder.RAW"><% loop $Actions %>
      $Field.RAW<% end_loop %>
    </div>
  </div><% end_if %><% if $IncludeFormTag %>
</form><% end_if %>
