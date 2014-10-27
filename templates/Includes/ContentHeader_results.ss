<% include ContentHeader %><% if $Results %>
<div class="alert alert-success alert-dismissible" role="alert">
	<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	<%t Silverstrap.RESULTS query=$Query count=$Results.getTotalItems %>
</div><% else %>
<div class="alert alert-danger" role="alert">
	<%t Silverstrap.NORESULTS query=$Query %>
</div><% end_if %>
