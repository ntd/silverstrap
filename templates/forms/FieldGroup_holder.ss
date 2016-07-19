<div class="form-group $HolderClasses<% if $Message %> has-error<% end_if %>"><% if $Title %>
  <label class="control-label col-sm-3"<% if $ID %> for="$ID"<% end_if %>>$Title</label><% end_if %><% loop $FieldList %>
  <%-- The following div should pertain to SmallFieldHolder but I cannot pass parameters
       to the underlying templates for applying the offset only to the first field --%>
  <div class="col-sm-2<% if not $Up.Title && $First %> col-sm-offset-3<% end_if %>">
    $SmallFieldHolder
  </div><% end_loop %><% if $Message %>
  <p class="help-block">$Message</p><% end_if %><% if $RightTitle %>
  <label class="control-label col-sm-3"<% if $ID %> for="$ID"<% end_if %>>$RightTitle</label><% end_if %>
</div>
