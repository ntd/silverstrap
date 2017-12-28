<li class="<% if $ClassName=='SilverStripe\CMS\Model\RedirectorPage' %>ss-external<% else %>$LinkingMode.ATT<% end_if %>">
  <a href="$Link.ATT" title="<%t Silverstrap.GOTO 'Go to {page} page' page=$Title.ATT %>">$MenuTitle<% if $ClassName=='SilverStripe\CMS\Model\RedirectorPage' %>&nbsp;<span class="glyphicon glyphicon-share-alt"></span><% end_if %></a>
</li>
