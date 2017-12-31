<div class="container ss-section">
  <% include SilverStripe\\Blog\\BlogSideBar %>
  <% include SilverStripe\\Blog\\MemberDetails %><% if $PaginatedList.Exists %>
  <h2>Posts by $CurrentProfile.FirstName.XML $CurrentProfile.Surname.XML for $Title.XML:</h2><% loop $PaginatedList %>
  <% include SilverStripe\\Blog\\PostSummary %><% end_loop %><% with $PaginatedList %>
  <% include SilverStripe\\Blog\\Pagination %><% end_with %><% end_if %>
</div>
$Form
$CommentsForm
