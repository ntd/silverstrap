<div class="$Silverstrap.group $HolderClasses<% if $Message %> has-error<% end_if %>"><% if $Title %>
  <label class="$Silverstrap.label"<% if $FieldList.First.ID %> for="$FieldList.First.ID.ATT"<% end_if %>>$Title</label><% end_if %><% loop $FieldList %>
  <%-- The following div should pertain to SmallFieldHolder but I cannot pass parameters
       to the underlying templates for applying the offset only to the first field --%>
  <div class="$Silverstrap.small_holder<% if not $Up.Title && $First %> $Silverstrap.no_label<% end_if %>">
    $SmallFieldHolder
  </div><% end_loop %><% if $Message %>
  <p class="help-block">$Message</p><% end_if %><% if $RightTitle %>
  <label class="$Silverstrap.right_label"<% if $ID %> for="$ID"<% end_if %>>$RightTitle</label><% end_if %>
</div>
