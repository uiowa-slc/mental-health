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
                    <% include SilverStripe\\Blog\\MemberDetails %>
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
                <% if $PaginatedList.Exists %>
                    <h2>Posts by $CurrentProfile.FirstName $CurrentProfile.Surname for $Title:</h2>
                    <% loop $PaginatedList %>
                        <% include SilverStripe\\Blog\\PostSummary %>
                    <% end_loop %>
                <% end_if %>
			</article>
			$Form
            $PageComments
            
            <% with $PaginatedList %>
                <% include SilverStripe\\Blog\\Pagination %>
            <% end_with %>

		</div>
	</div>
</main>

