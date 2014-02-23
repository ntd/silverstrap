<%-- This template is silverstripe-autotoc ready --%>
<div class="row">
	<main class="<% if $Autotoc %>col-md-9 col-sm-12<% else %>col-md-12<% end_if %>" id="ss-content">
		<div class="page-header"><h1>$Title</h1></div>
		$Content
		$Form
	</main><% if $Autotoc %>
	<div class="col-md-3 hidden-sm hidden-print">
		<% include Autotoc %>
	</div><% end_if %>
</div>
