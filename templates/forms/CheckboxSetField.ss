<% loop $Options %><label class="checkbox-inline $Class">
  <input type="checkbox"<% if $ID %> id="$ID"<% end_if %> name="$Name" value="$Value"<% if $isChecked %> checked<% end_if %><% if $isDisabled %> disabled<% end_if %>>
  $Title
</label><% end_loop %>
