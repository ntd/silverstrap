<div class="container ss-section">
  <% include SilverStripe\\Blog\\BlogSideBar %>
  <article class="<% if $SideBarView %>col-md-9<% else %>col-xs-12<% end_if %>">
    <div class="page-header">
      <h1><% if $ArchiveYear %>
        <%t SilverStripe\\Blog\\Model\\Blog.Archive 'Archive' %>:<%t Blog.Archive "Archive" %>:<% if $ArchiveDay %>
        $ArchiveDate.Nice<% else_if $ArchiveMonth %>
        $ArchiveDate.Format("F, Y")<% else %>
        $ArchiveDate.Format("Y")<% end_if %><% else_if $CurrentTag %>
        <%t SilverStripe\\Blog\\Model\\Blog.Tag 'Tag' %>: $CurrentTag.Title.XML<% else_if $CurrentCategory %>
        <%t SilverStripe\\Blog\\Model\\Blog.Category 'Category' %>: $CurrentCategory.Title.XML<% else %>
        $Title.XML<% end_if %>
      </h1>
    </div>
    <div class="typography clearfix">
      $Content.RAW
    </div><% if $PaginatedList.Exists %><% loop $PaginatedList %>
    <% include SilverStripe\\Blog\\PostSummary %><% end_loop %><% with $PaginatedList %>
    <% include SilverStripe\\Blog\\Pagination %><% end_with %><% else %>
    <p><%t SilverStripe\\Blog\\Model\\Blog.NoPosts 'There are no posts' %></p><% end_if %>
  </article>
</div>
$Form
$CommentsForm
