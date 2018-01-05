<article><% if $FeaturedImage %><% with $FeaturedImage.ScaleMaxWidth(795) %>
  <p>
    <img src="$Link.ATT" class="img-responsive center-block" alt="$Title.ATT" width="$Width" height="$Height">
  </p><% end_with %><% end_if %>
  <div class="typography">
    $Content
  </div>
  <% include SilverStripe\\Blog\\EntryMeta %>
</article>
$Form
$CommentsForm
