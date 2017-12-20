<% include ContentHeader %><% if $Results %>
<div class="alert alert-success alert-dismissible" role="alert">
	<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	<%t Silverstrap.RESULTS 'Showing results for &quot;{query}&quot; ({count} pages found):' query=$Query count=$Results.getTotalItems %>
</div><% else %>
<div class="alert alert-danger" role="alert">
	<%t Silverstrap.NORESULTS 'No results containing &quot;{query}&quot; were found.' query=$Query %>
</div><% end_if %>
