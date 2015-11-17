<% if not $isPreview %>
<% if $Gravatar %>
<div class="media-left">
	<img class="media-object" src="$Gravatar.ATT" alt="$Name.ATT">
</div>
<% end_if %>
<div class="media-body">
	<h4 class="media-heading"><% if $URL %>
		<a class="author" href="$URL.URL" rel="nofollow">$AuthorName.XML</a><% else %>
		<span class="author">$AuthorName.XML</span><% end_if %>
		<span class="date">$Created.Nice ($Created.Ago)</span>
	</h4>
<% end_if %>
	
	<div class="ss-comment" id="<% if $isPreview %>comment-preview<% else %>$Permalink.ATT<% end_if %>">
		<p>$EscapedComment</p>
	</div>

<% if not $isPreview %>
	<% if $ApproveLink || $SpamLink || $HamLink || $DeleteLink || $RepliesEnabled %>
	<div class="comment-action-links">
		<div class="comment-moderation-options">
			<% if $ApproveLink %>
				<a href="$ApproveLink.ATT" class="btn btn-sm btn-success"><% _t('CommentsInterface_singlecomment_ss.APPROVE', 'approve it') %></a>
			<% end_if %>
			<% if $SpamLink %>
				<a href="$SpamLink.ATT" class="btn btn-sm btn-danger"><% _t('CommentsInterface_singlecomment_ss.ISSPAM','spam it') %></a>
			<% end_if %>
			<% if $HamLink %>
				<a href="$HamLink.ATT" class="btn btn-sm btn-primary"><% _t('CommentsInterface_singlecomment_ss.ISNTSPAM','not spam') %></a>
			<% end_if %>
			<% if $DeleteLink %>
				<a href="$DeleteLink.ATT" class="btn btn-sm btn-danger"><% _t('CommentsInterface_singlecomment_ss.REMCOM','reject it') %></a>
			<% end_if %>
		</div>
		<% if $RepliesEnabled %>
			<a class="btn btn-primary" href="#{$ReplyForm.FormName}">Reply</a>
		<% end_if %>
	</div>
	<% end_if %>

	<% include CommentReplies %>
</div>
<% end_if %>
