<div class="container ss-section"><% if $SideBarView %>
	<div class="pull-right col-md-3 hidden-print">
		$SideBarView
	</div><% end_if %>
	<section<% if $SideBarView %> class="col-md-9"<% end_if %>><% with $CurrentProfile %>
		<div class="page-header">
			<h1>$FirstName $Surname</h1>
		</div>
		<div class="media"><% if $BlogProfileImage %>
			<div class="media-left">
				<img class="media-object" <% with $BlogProfileImage.ScaleWidth(180) %>src="$Link.ATT" width="$Width" height="$Height"<% end_with %> alt="$Title.ATT">
			</div><% end_if %>
			<div class="media-body">
				$BlogProfileSummary
			</div>
		</div><% end_with %><% if $PaginatedList.Exists %>
		<h2>Posts by $CurrentProfile.FirstName $CurrentProfile.Surname for $Title:</h2><% loop $PaginatedList %>
		<% include PostSummary %><% end_loop %>
		<% with $PaginatedList %><% include Pagination %><% end_with %><% end_if %>
	</section>
</div>
$Form
$CommentsForm
