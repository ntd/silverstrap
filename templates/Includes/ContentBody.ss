<%-- This template is silverstripe-autotoc ready --%>
<div class="row"><% if $Autotoc %>
	<div class="pull-right col-xs-12 col-sm-12 col-md-3 hidden-print">
		<% include Autotoc %>
	</div><% end_if %>
	<main class="<% if $Autotoc %>col-xs-12 col-sm-12 col-md-9<% else %>col-md-12<% end_if %>" id="ss-content">
		$Content
		$Form
	</main>
</div>
