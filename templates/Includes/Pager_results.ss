<% if $Results.MoreThanOnePage %>
<div class="text-center">
	<ul class="pagination">
		<li<% if not $Results.NotFirstPage %> class="disabled"<% end_if %>><a href="$Results.PrevLink.ATT">&laquo;</a></li><% loop $Results.Pages %><% if $CurrentBool %>
		<li class="active"><a href="$Link.ATT">$PageNum <span class="sr-only">(current)</span></a></li><% else %>
		<li><a href="$Link.ATT" title="<%t Silverstrap.GOTO page=$PageNum %>">$PageNum</a></li><% end_if %><% end_loop %>
		<li<% if not $Results.NotLastPage %> class="disabled"<% end_if %>><a href="$Results.NextLink.ATT">&raquo;</a></li>
	</ul>
</div>
<% end_if %>
