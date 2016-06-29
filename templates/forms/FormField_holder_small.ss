<div class="col-sm-2"><% if $Title %>
  <label class="control-label"<% if $ID %> for="$ID"<% end_if %>>$Title</label><% end_if %>
  $Field<% if $RightTitle %>
  <label class="control-label"<% if $ID %> for="$ID"<% end_if %>>$RightTitle</label><% end_if %>
</div>
