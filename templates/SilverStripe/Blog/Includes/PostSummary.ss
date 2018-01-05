<div class="media">
  <div class="media-left"><% if $FeaturedImage %>
    <a href="$Link.ATT" title="<%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout 'Read more about {title}...' title=$Title %>"><img class="media-object" <% with $FeaturedImage.ScaleWidth(128) %>src="$Link.ATT" width="$Width.ATT" height="$Height.ATT"<% end_with %> alt="$Title.ATT"></a><% else %>
    <%-- No featured image: let us manually reserve space anyway to have everything properly aligned --%>
    <div style="width:128px"> </div><% end_if %>
  </div>
  <div class="media-body">
    <h3 class="media-heading">
      <a href="$Link.ATT"><% if $MenuTitle %>$MenuTitle.XML<% else %>$Title.XML<% end_if %></a>
    </h3>
    <p><% if $Summary %>
      $Summary.XML<% else %>
      $Excerpt.XML<% end_if %>
    </p>
    <% include SilverStripe\\Blog\\EntryMeta %>
  </div>
</div>
