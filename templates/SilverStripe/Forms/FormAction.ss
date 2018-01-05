<button class="btn<% if $Type=="action" %> btn-primary<% end_if %> $extraClass" $getAttributesHTML('class')><% if $ButtonContent %>
  $ButtonContent<% else %>
  $Title<% end_if %>
</button>
