<% if $Children %><% if $Parent %>
    <% include NavbarSubmenu %><% else %>
    <% include NavbarMenu %><% end_if %>
<% else %>
    <% include NavbarLink %>
<% end_if %>
