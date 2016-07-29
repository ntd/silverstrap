<div class="form-group"><% if $Title %>
  <label class="$Silverstrap.label"<% if $ID %> for="$ID"<% end_if %>>$Title</label><% end_if %>
  <div class="<% if not $Title %>$Silverstrap.no_label <% end_if %>$Silverstrap.holder">
    $Field
  </div>
</div>
