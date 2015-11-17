<% if $CommentsEnabled %>
<div id="$CommentHolderID" class="comments-holder-container">

<h3><% _t('CommentsInterface_ss.POSTCOM','Post your comment') %></h3>

<% if $AddCommentForm %>
	<% if $canPostComment %>
		<% if $ModeratedSubmitted %>
			<p id="{$CommentHolderID}_PostCommentForm_error" class="message good">
				<% _t('CommentsInterface_ss.AWAITINGMODERATION', 'Your comment has been submitted and is now awaiting moderation.') %>
			</p>
		<% end_if %>
		$AddCommentForm
	<% else %>
		<p><% _t('CommentsInterface_ss.COMMENTLOGINERROR', 'You cannot post comments until you have logged in') %><% if $PostingRequiredPermission %>,<% _t('CommentsInterface_ss.COMMENTPERMISSIONERROR', 'and that you have an appropriate permission level') %><% end_if %>. 
			<a href="Security/login?BackURL={$Parent.Link}" title="<% _t('CommentsInterface_ss.LOGINTOPOSTCOMMENT', 'Login to post a comment') %>"><% _t('CommentsInterface_ss.COMMENTPOSTLOGIN', 'Login Here') %></a>.
		</p>
	<% end_if %>
<% else %>
	<p><% _t('CommentsInterface_ss.COMMENTSDISABLED', 'Posting comments has been disabled') %>.</p>	
<% end_if %>

<h3><% _t('CommentsInterface_ss.COMMENTS','Comments') %></h3>

<div class="comments-holder"><% if $PagedComments %>
	<ul class="media-list"><% loop $PagedComments %>
		<li class="media $EvenOdd $FirstLast $SpamClass">
			<% include CommentsInterface_singlecomment %>
		</li><% end_loop %>
	</ul>
	<% with $PagedComments %><% include Pagination %><% end_with %><% else %>
	<p class="no-comments-yet"><% _t('CommentsInterface_ss.NOCOMMENTSYET','No one has commented on this page yet.') %></p><% end_if %>
</div>

<% if $DeleteAllLink %>
<p class="delete-comments">
	<a href="$DeleteAllLink"><% _t('CommentsInterface_ss.DELETEALLCOMMENTS','Delete all comments on this page') %></a>
</p>
<% end_if %>

<p class="text-right">
	<a href="$CommentRSSLinkPage.ATT" class="btn btn-primary"><% _t('CommentsInterface_ss.RSSFEEDCOMMENTS', 'RSS feed for comments on this page') %></a>
	<a href="$CommentRSSLink.ATT" class="btn btn-primary"><% _t('CommentsInterface_ss.RSSFEEDALLCOMMENTS', 'RSS feed for all comments') %></a>
</p>

</div>
<% end_if %>
