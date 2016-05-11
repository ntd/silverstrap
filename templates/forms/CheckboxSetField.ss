<% loop $Options %><label class="checkbox-inline $Class">
  <input type="checkbox" id="$ID" name="$Name" value="$Value"<% if $isChecked %> checked<% end_if %><% if $isDisabled %> disabled<% end_if %>>
  $Title
</label><% end_loop %>
