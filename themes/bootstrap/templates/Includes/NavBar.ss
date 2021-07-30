<nav class="navbar navbar-main navbar-light navbar-expand-lg px-0 pb-lg-0" aria-label="Site main navigation">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav">
            <% loop $Menu(1) %>
                <% if $URLSegment != 'home' %>
                <li class="nav-item $LinkingMode <% if $URLSegment == "home" %>d-none d-lg-block <% end_if %><% if $isCurrent || $isSection %>nav-item-active<% end_if %>">
                    <a class="nav-link" href="$Link">$MenuTitle.XML</a>
                </li>
                <% end_if %>
            <% end_loop %>
        </ul>
    </div>
</nav>