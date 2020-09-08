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

        <% if not $HideLinksToStaffPages %>
            <% if $Menu(2) %>
                <% include SideBar %>
            <% end_if %>
        <% end_if %>

        <div class="content-container <% if not $HideLinksToStaffPages %>col-lg-8 col-xl-9 <% else %>col-lg-12<% end_if %>">
            <article>
            
            
                $Content
                <div class="stafflist">
                    <% if $Teams %>
                        <% loop $Teams %>
                            <h3 class="stafflist__title">$Title</h3>
                            <ul class="stafflist__list list-unstyled mb-5">
                                <% if $Up.SortLastName %>
                                    <% loop $SortedStaffPages.Sort(LastName, ASC) %>
                                        <% include StaffPageListItem %>
                                    <% end_loop %>
                                <% else %>
                                    <% loop $SortedStaffPages %>
                                        <% include StaffPageListItem %>
                                    <% end_loop %>
                                <% end_if %>
                            </ul>
                        <% end_loop %>
                    <% else %><%-- end if teams --%>
                        <ul class="stafflist__list list-unstyled mb-5">
                            <% loop $Children %>
                                <% include StaffPageListItem %>
                            <% end_loop %>
                        </ul>
                    <% end_if %>
                </div><%-- end stafflist --%>
			    $Form
            </article>
        </div>
	</div>
</main>