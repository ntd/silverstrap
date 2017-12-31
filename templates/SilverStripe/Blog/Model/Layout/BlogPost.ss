<div class="container">
  <div class="row ss-section">
    <% include SilverStripe\\Blog\\BlogSideBar %>
    <div class="<% if $SideBarView %>col-md-9<% else %>col-xs-12<% end_if %>">
      <% include SilverStripe\\Blog\\PostContent %>
    </div>
  </div>
</div>
