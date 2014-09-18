<%-- This template is silverstripe-autotoc ready --%><% if $Title %>
<div class="page-header"><h1>$Title</h1></div><% end_if %>
<div class="row">
	<main class="<% if $Autotoc %>col-md-9 col-sm-12<% else %>col-md-12<% end_if %>" id="ss-content">
		$Content
		$Form
	</main><% if $Autotoc %>
	<div class="col-md-3 hidden-sm hidden-print">
		<% include Autotoc %>
	</div><% end_if %>
</div>
