<ul $getAttributesHTML('class') class="nav nav-tabs $extraClass" role="tablist"><% loop $Tabs %>
  <li role="presentation"<% if $IsFirst %> class="active"<% end_if %>><a href="#$Top.Name.ATT-$Pos" aria-controls="$Top.Name.ATT-$Pos" role="tab" data-toggle="tab">$Name.XML</a></li><% end_loop %>
</ul>
<div class="tab-content"><% loop $Tabs %><% if $Tabs %>
  <b>ERROR</b> Nested tabs are <a href="https://getbootstrap.com/docs/3.3/javascript/#tabs-examples">not supported</a> by BootStrap 3.<% else %>
  <div role="tabpanel" class="tab-pane<% if $IsFirst %> active<% end_if %>" id="$Top.Name.ATT-$Pos"><% loop $Fields %>
    $FieldHolder<% end_loop %>
  </div><% end_if %><% end_loop %>
</div>
