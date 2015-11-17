<% if $MoreThanOnePage %>
<nav class="text-center">
	<ul class="pagination">
		<li<% if not $NotFirstPage %> class="disabled"<% end_if %>>
			<a href="$PrevLink.ATT" aria-label="Previous">
				<span aria-hidden="true">&laquo;</span>
			</a>
		</li><% loop $Pages %><% if $CurrentBool %>
		<li class="active">
			<a href="$Link.ATT">$PageNum <span class="sr-only">(current)</span></a>
		</li><% else_if $Link %>
		<li>
			<a href="$Link.ATT">$PageNum</a>
		</li><% else %>
		<li>
			<a href="#" class="disabled ss-borderless">...</a>
		</li><% end_if %><% end_loop %>
		<li<% if not $NotLastPage %> class="disabled"<% end_if %>>
			<a href="$NextLink.ATT" aria-label="Next">
				<span aria-hidden="true">&raquo;</span>
			</a>
		</li>
	</ul>
</nav>
<% end_if %>
