<select  class="$Silverstrap.control $extraClass" $getAttributesHTML('class')<% if $isDisabled %> disabled<% end_if %>><% loop $Options %>
  <option value="$Value.XML"<% if $Selected %> selected<% end_if %><% if $Disabled %> disabled<% end_if %>><% if $Title.exists %>$Title.XML<% else %>&nbsp;<% end_if %></option><% end_loop %>
</select>
