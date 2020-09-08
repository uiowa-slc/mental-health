<% include Header %>

<main class="container-xl my-3 my-lg-5" id="content">
    <div class="row">
        <div class="col">
            <div class="content-header mb-4">
                $Breadcrumbs
                <h1>$Title</h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="content-container col-lg-12">
            <div class="row">
                <div class="col-lg-8">
                    <% if $Image.URL %>
                        <img src="$Image.URL" class="float-md-left mb-md-3 mr-md-3 w-50 img-thumbnail" alt="$Title">
                    <% end_if %>

                    <%-- Content --%>
                    <% if $Content %>
                        $Content
                    <% end_if %>

                    <% if $Dates.Count > 1 %>
                        <hr />
                        <h5>Next Date:</h5>
                        <% else %>
                        <hr />
                        <h5>Date and Time:</h5>
                    <% end_if %>

                    <% if $Dates %>
                        <% loop $Dates.Limit(1) %>
                            <% include DateTimesList %>
                        <% end_loop %>
                    <% else %>
                            No upcoming dates.
                    <% end_if %>

                    <%-- Upcoming Dates --%>
                    <% if $Dates.Count > 1 %>
                        <hr />
                        <h5>All Dates</h5>
                        <ul>
                        <% loop $Dates %>
                            <li class="$FirstLast">
                                <% include DateTimesList %>
                            </li>
                        <% end_loop %>
                        </ul>
                    <% end_if %>

                    <br />
                    <p class="small mt-5 text-muted"><i>Individuals with disabilities are encouraged to attend all University of Iowa–sponsored events. If you are a person with a disability who requires a reasonable accommodation in order to participate in this program, please contact {$ContactName} in advance at {$ContactPhone} or {$ContactEmail}
                    </i></p>
                </div><!-- end .col -->
                <div class="col-lg-4">

                    

                    <% if $Venue.Title %>
                        <p><strong>Venue:</strong><br />$Venue.Title
                        <% if $Venue.Address %><br>$Venue.Address<% end_if %>
                        <% if $Venue.WebsiteLink %><br><a href="$Venue.WebsiteLink">View Map</a><% end_if %>
                        </p>
                    <% end_if %>

                    <% if $ContactName %>
                        <p><strong>Contact Name:</strong><br /> $ContactName</p>
                    <% end_if %>

                    <% if $ContactEmail %>
                        <p><strong>Contact Email:</strong><br /> <a href="mailto:$ContactEmail">$ContactEmail</a></p>
                    <% end_if %>

                    <% if $Cost %>
                        <p><strong>Cost:</strong><br /> $Cost </p>
                    <% end_if %>

                    <% if $Sponsor %>
                        <p><strong>Sponsor:</strong><br /> $Sponsor </p>
                    <% end_if %>

                    <% if $MoreInfoLink %>
                        <p><a href="$MoreInfoLink" target="_blank" class="btn btn-warning">Website</a></p>
                    <% end_if %>

                    <% if $Tags %>
                        <p><strong>Tags</strong><br />
                        <% loop $Tags %>
                            <a href="$Link" class="badge badge-secondary">$Title</a>
                        <% end_loop %>
                        </p>
                    <% end_if %>

                    <% if $UiCalendarLink %>
                        <a href="$UiCalendarLink" target="_blank" class="btn btn-warning">View on the UI calendar</a>
                    <% end_if %>
                </div>

			</div>

		</div>
	</div>
</main>
