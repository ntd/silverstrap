<section<% if $SideBarView %> class="col-md-9"<% end_if %>><% with $CurrentProfile %>
  <div class="page-header">
    <h1>$FirstName.XML $Surname.XML</h1>
  </div>
  <div class="media"><% if $BlogProfileImage %>
    <div class="media-left">
      <img class="media-object" <% with $BlogProfileImage.ScaleWidth(180) %>src="$Link.ATT" width="$Width.ATT" height="$Height.ATT"<% end_with %> alt="$Title.ATT">
    </div><% end_if %>
    <div class="media-body">
      $BlogProfileSummary.XML
    </div>
  </div><% end_with %>
</section>
