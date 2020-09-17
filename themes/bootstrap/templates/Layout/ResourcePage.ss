<% include Header %>

<!-- Photo Image Feature -->
<% if $Photo %>
    <% include FeaturedImage %>
<% end_if %>

<main class="container-xl my-3 my-lg-5" id="content">
    <div class="row">
        <div class="col">
            <% if not $Photo %>
                <div class="content-header mb-4">
                    $Breadcrumbs
                    <h1>$Title</h1>
                </div>
            <% end_if %>
        </div>
    </div>
    <div class="row">
        <% if $Menu(2) %>
			<% include SideBar %>
		<% end_if %>
        <div class="content-container <% if $Menu(2) %>col-lg-8 col-xl-9 <% else %>col-md-10 offset-md-1<% end_if %>">
            <article>
				$Content
			</article>
			$Form
			$PageComments
		</div>
    </div>
    <% if $Resources %>
        <section class="row">
            <div class="col-md-10 offset-md-1 ">
                <div class="row">
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

