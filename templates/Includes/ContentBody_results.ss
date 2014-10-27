<% if $Results %>
<div class="row">
	<div class="col-md-12">
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
		</ul>
		<% include Pager_results %>
	</div>
</div>
<% end_if %>
