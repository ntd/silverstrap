<ul class="list-inline"><% if $Categories.exists %>
	<li>
		<%t Blog.PostedIn "Posted in" %><% loop $Categories %>
		<a href="$Link" title="$Title">$Title</a><% if not Last %>, <% end_if %><% end_loop %>
	</li><% end_if %><% if $Tags.exists %>
	<li><% loop $Tags %>
		<a href="$Link.ATT" class="label label-default" title="$Title.ATT">$Title</a><% end_loop %>
	</li><% end_if %><% if $Comments.exists %>
	<li>
		<a href="{$Link.ATT}#comments-holder"><%t Blog.Comments "Comments" %> <span class="badge">$Comments.count</span></a>
	</li><% end_if %>
	<li class="clearfix">
		<%t Blog.Posted "Posted" %>
		<a href="$MonthlyArchiveLink.ATT">$PublishDate.ago</a><% if $Credits %>
		<%t Blog.By "by" %><% loop $Credits %><% if not $First && not $Last %>, <% end_if %><% if not $First && $Last %> and <% end_if %><% if $URLSegment %>
		<a href="$URL">$Name.XML</a><% else %>
		$Name.XML<% end_if %><% end_loop %><% end_if %>
	</li>
</ul>
