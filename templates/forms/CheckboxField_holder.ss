<div class="form-group $HolderClasses<% if $Message %> has-error<% end_if %>">
  <div class="$Silverstrap.no_label $Silverstrap.holder">
    <div class="checkbox<% if $isReadonly || $isDisabled %> disabled<% end_if %>">
      <label>
        $Field
        $Title
      </label><% if $Message %>
      <p class="help-block">$Message</p><% else_if $Description %>
      <p class="help-block">$Description</p><% end_if %>
    </div>
  </div>
</div>
