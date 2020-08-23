<% include Header %>

<main id="content" class="container-xl">

    <section class="jumbotron jumbotron-fluid bg-transparent pb-lg-9">
        <h1 class="display-4 text-light">$SiteConfig.Title</h1>
        <div class="text-light">
            $Content
            $Form
            $PageComments
        </div>
    </section>

    <% if $Resources %>
        <section class="row">
            <div class="col">
                <div class="row mt-lg-n9">
                    <% loop $Resources %>
                        <div class="col-md-6">
                            <% include ResourceCard %>
                        </div>
                    <% end_loop %>
                </div>			
            </div>
        </section>
    <% end_if %>
</main>

