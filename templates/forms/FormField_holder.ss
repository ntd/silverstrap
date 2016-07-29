<div class="form-group $HolderClasses<% if $Message %> has-error<% end_if %>"><% if $Title %>
  <label class="$Silverstrap.label"<% if $ID %> for="$ID"<% end_if %>>$Title</label><% end_if %>
  <div class="<% if not $Title %>$Silverstrap.no_label <% end_if %>$Silverstrap.holder $extraClass">
    $Field<% if $Message %>
    <p class="help-block">$Message</p><% end_if %>
  </div><% if $RightTitle %>
  <label class="$Silverstrap.right_label"<% if $ID %> for="$ID"<% end_if %>>$RightTitle</label><% end_if %>
</div>
