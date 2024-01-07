<input type="hidden" name="$Name.ATT" value="$Value.ATT">
<ul class="nav nav-pills<% if extraClass %> $extraClass<% end_if %>"><% loop $FieldSet %>
  <li role="presentation"<% if $Selected || $Up.IsReadonly || $Up.IsDisabled%> class="<% if $Selected %>active<% end_if %> <% if $Up.IsReadonly || $Up.IsDisabled %>disabled<% end_if %>"<% end_if %>>
    <a href="#$Up.Name.ATT-$Pos" aria-controls="$Up.Name.ATT-$Pos" role="tab"<% if not $Up.IsDisabled && not $Up.IsReadonly %> data-toggle="tab"<% end_if %> data-value="$value.ATT">$Title.XML</a>
  </li><% end_loop %>
</ul>
<div class="tab-content"><% loop $FieldSet %>
  <div id="$Up.Name.ATT-$Pos" role="tabpanel" class="tab-pane fade<% if $Selected %> in active<% end_if %>"><% if $FieldList %>
    $FieldHolder<% end_if %>
  </div><% end_loop %>
</div>