<div class="media">
	<div class="media-left"><% if $FeaturedImage %>
		<a href="$Link.ATT"><img class="media-object" <% with $FeaturedImage.ScaleWidth(128) %>src="$Link.ATT" width="$Width" height="$Height"<% end_with %> alt="$Title.ATT"></a><% else %>
		<%-- No featured image: let us manually reserve space anyway to have everything properly aligned --%>
		<div style="width:128px"> </div><% end_if %>
	</div>
	<div class="media-body">
		<h3 class="media-heading">
			<a href="$Link.ATT"><% if $MenuTitle %>$MenuTitle<% else %>$Title<% end_if %></a>
		</h3>
		<p>
			<% if $Summary %>$Summary<% else %>$Excerpt<% end_if %>
		</p>
		<% include EntryMeta %>
	</div>
</div>
