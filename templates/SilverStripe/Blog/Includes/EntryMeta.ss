<ul class="list-inline clearfix"><% if $Categories.exists %>
  <li>
    <%t SilverStripe\\Blog\\Model\\Blog.PostedIn "Posted in" %><% loop $Categories %>
    <a href="$Link.ATT" title="$Title.ATT">$Title.XML</a><% if not Last %>, <% end_if %><% end_loop %>
  </li><% end_if %><% if $Tags.exists %>
  <li><% loop $Tags %>
    <a href="$Link.ATT" class="label label-default" title="$Title.ATT">$Title.XML</a><% end_loop %>
  </li><% end_if %><% if $Comments.exists %>
  <li>
    <a href="{$Link.ATT}#comments-holder">
      <%t SilverStripe\\Blog\\Model\\Blog.Comments "Comments" %>
      <span class="badge">$Comments.count.XML</span>
    </a>
  </li><% end_if %>
  <li>
    <%t SilverStripe\\Blog\\Model\\Blog.Posted "Posted" %>
    <a href="$MonthlyArchiveLink.ATT">$PublishDate.ago</a><% if $Credits %>
    <%t SilverStripe\\Blog\\Model\\Blog.By "by" %><% loop $Credits %><% if not $First %><% if $Last %>
    <%t SilverStripe\\Blog\\Model\\Blog.AND "and" %><% else %>, <% end_if %><% end_if %><% if $URLSegment && not $Up.ProfilesDisabled %>
    <a href="$URL">$Name.XML</a><% else %>
    $Name.XML<% end_if %><% end_loop %><% end_if %>
  </li>
</ul>
