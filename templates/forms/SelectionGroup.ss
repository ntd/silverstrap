<input type="hidden" name="$Name.ATT" value="$Value.ATT">
<ul class="nav nav-pills<% if extraClass %> $extraClass<% end_if %>"><% loop $FieldSet %>
  <li role="presentation"<% if $Selected || $Up.IsReadonly %> class="<% if $Selected %>active<% end_if %> <% if $Up.IsReadOnly %>disabled<% end_if %>"<% end_if %>>
    <a href="#$Up.Name.ATT-$Pos" aria-controls="$Up.Name.ATT-$Pos" role="tab" data-toggle="tab" data-value="$value.ATT">$Title</a>
  </li><% end_loop %>
</ul>
<div class="tab-content"><% loop $FieldSet %>
  <div id="$Up.Name.ATT-$Pos" role="tab-panel" class="tab-pane fade<% if $Selected %> in active<% end_if %>"><% if $FieldList %>
    $FieldHolder<% end_if %>
  </div><% end_loop %>
</div>
