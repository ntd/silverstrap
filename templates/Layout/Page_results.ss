<div class="container ss-results">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header"><h1>$Title</h1></div>
<% if $Results %>
			<p><%t Silverstrap.RESULTS query=$Query count=$Results.Count %></p>
			<ul><% loop $Results %>
				<li>
					<article>
						<h4>
							<a href="$Link"><% if $MenuTitle %>$MenuTitle<% else %>$Title<% end_if %></a><% if $MetaDescription %>
							<small>$MetaDescription</small><% end_if %>
						</h4>
						<p>$Content.NoHTML.LimitWordCountXML(50)</p>
					</article>
				</li><% end_loop %>
			</ul><% if $Results.MoreThanOnePage %>
			<div class="text-center">
				<ul class="pagination">
					<li<% if not $Results.NotFirstPage %> class="disabled"<% end_if %>><a href="$Results.PrevLink">&laquo;</a></li><% loop $Results.Pages %><% if $CurrentBool %>
					<li class="active"><a href="$Link">$PageNum <span class="sr-only">(current)</span></a></li><% else %>
					<li><a href="$Link" title="<%t Silverstrap.GOTO page=$PageNum %>">$PageNum</a></li><% end_if %><% end_loop %>
					<li<% if not $Results.NotLastPage %> class="disabled"<% end_if %>><a href="$Results.NextLink">&raquo;</a></li>
				</ul>
			</div><% end_if %>
<% else %>
			<p><%t Silverstrap.NORESULTS query=$Query %></p>
<% end_if %>
		</div>
	</div>
</div>
