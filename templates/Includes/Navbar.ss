<nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header"><% if $Menu(1) %>
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#ss-navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button><% end_if %>
      <a class="navbar-brand" href=".">$SiteConfig.Title</a>
    </div><% if $Menu(1) %>
    <div class="collapse navbar-collapse" id="ss-navbar">
      <ul class="nav navbar-nav"><% loop $Menu(1) %>
        <% include NavbarItem %><% end_loop %>
      </ul><% end_if %>
      $SearchForm
    </div>
  </div>
</nav>
