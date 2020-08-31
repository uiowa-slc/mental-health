<nav class="navbar navbar-expand-lg navbar-light px-0" style="background-color: #ffcd00;" aria-label="Site main navigation">
    <a class="navbar-brand " href="{$BaseUrl}" aria-label="{$SiteConfig.Title}">
        $SiteConfig.Title
    </a>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarText">
        <ul class="navbar-nav">
            <% loop $Menu(1) %>
                <% if $URLSegment != 'home' %>
                <li class="nav-item $LinkingMode nav-item<% if $isCurrent || $isSection %> active<% end_if %>">
                    <a class="nav-link" href="$Link"  >$MenuTitle.XML</a>
                </li>
                <% end_if %>
            <% end_loop %>
        </ul>
    </div>
</nav>