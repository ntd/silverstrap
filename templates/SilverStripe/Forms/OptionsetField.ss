<% loop $Options %><label class="radio-inline $extraClass<% if $isReadonly || $isDisabled %> disabled<% end_if %>">
  <input type="radio"<% if $ID %> id="$ID"<% end_if %> name="$Name"<% if $Value %> value="$Value"<% end_if %><% if $isChecked %> checked<% end_if %><% if $isReadonly %> readonly<% else_if $isDisabled %> disabled<% end_if %>>
  $Title
</label><% end_loop %>
