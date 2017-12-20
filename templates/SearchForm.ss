<form class="navbar-form navbar-right" role="search" $FormAttributes>
	<div class="input-group">
		<input name="Search" class="form-control" type="text" title="<%t Silverstrap.SearchTitle 'Enter the terms to search' %>" required value="$SearchQuery.ATT">
		<span class="input-group-btn">
			<button type="submit" class="btn btn-default"><%t Silverstrap.Search 'Search' %></button>
		</span>
	</div>
</form>
