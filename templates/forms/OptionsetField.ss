<% loop $Options %><label class="radio-inline $Class">
  <input type="radio"<% if $ID %> id="$ID"<% end_if %> name="$Name" value="$Value"<% if $isChecked %> checked<% end_if %><% if $isDisabled %> disabled<% end_if %>>
  $Title
</label><% end_loop %>
