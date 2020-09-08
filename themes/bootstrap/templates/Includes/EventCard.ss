<div class="card mb-3">
    <div class="row no-gutters">
        <div class="col-md-3">
            <div class="eventimg-overflow">
                <% if $Image.URL %>
                    <a href="$Link">
                        <img src="$Image.URL" class="card-img" alt="$Title" loading="lazy">
                    </a>
                <% else_if $Venue.ImageURL %>
                    <a href="$Link">
                        <img src="$Venue.ImageURL" class="card-img" alt="$Title" loading="lazy">
                    </a>
                <% else %>
                    <a href="$Link">
                        <img src="{$ThemeDir}/dist/images/dosl.gif" class="card-img" alt="$Title" loading="lazy">
                    </a>
                <% end_if %>
            </div>
        </div>
        <div class="col-md-9">
            <div class="card-body">
                <h5 class="card-title">
                    <a href="$Link">$Title</a>
                </h5>
                
                <!-- Dates -->
                <% if $Dates %>
                    <p class="card-text small text-muted">
                        <img src="{$ThemeDir}/dist/images/calendar-bw.png" alt="calendar icon" width="16">
                        <% loop $Dates.Limit(1) %>
                            <% include DateTimesList %>
                        <% end_loop %>
                    </p>
                <% else %>
                        No upcoming dates.
                <% end_if %>

                <!-- Venue -->
                <% if $Venue %>
                    <p class="card-text small text-muted">
                        <img src="{$ThemeDir}/dist/images/location-bw.png" alt="location icon" width="16">
                        $Venue.Title
                    </p>
                <% end_if %>

                <p class="card-text">$Content.Summary(30)</p>
            </div>
        </div>
    </div>
</div>
