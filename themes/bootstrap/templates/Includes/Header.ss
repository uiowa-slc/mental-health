
<header class="header">
    <div class="container-xl">
        <div class="row">
            <div class="col">
                <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #fff;">
                    <a class="navbar-brand " href="{$BaseUrl}" aria-label="{$SiteConfig.Title}">
                       Mental Health
                    </a>

                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end" id="navbarText">
                        <ul class="navbar-nav">
                            <% loop $Menu(1) %>
                                <li class="$LinkingMode nav-item<% if $isCurrent || $isSection %> active<% end_if %>">
                                    <a class="nav-link" href="$Link" title="$Title.XML">$MenuTitle.XML</a>
                                </li>
                            <% end_loop %>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</header>