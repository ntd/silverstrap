<div class="form-group $HolderClasses<% if $Message %> has-error<% end_if %>"><% if $Title %>
  <label class="control-label col-sm-3"<% if $ID %> for="$ID"<% end_if %>>$Title</label><% else %>
  <div class="col-sm-3"> </div><% end_if %><% loop $FieldList %>
  $SmallFieldHolder<% end_loop %><% if $Message %>
  <p class="help-block">$Message</p><% end_if %><% if $RightTitle %>
  <label class="control-label col-sm-3"<% if $ID %> for="$ID"<% end_if %>>$RightTitle</label><% end_if %>
</div>
