<!-- Loop Children -->
<% if $Children %>
	<div class="childpages">
        <% loop $Children %>
            <div class="card bg-dark text-white">
                <% if $Photo %>
                    <img src="$Photo.FocusFill(400,300).URL" class="card-img img-fluid" alt="$Title" loading="lazy">
                <% else %>
                    <img src="{$ThemeDir}/dist/images/card-bg.jpg" alt="" loading="lazy">
                <% end_if %>
                <div class="card-img-overlay  d-flex flex-column justify-content-end">
                    <h4 class="card-title">$Title</h4>
                    <%-- <p class="card-text">$Content.FirstSentence.LimitCharacters(200)</p> --%>
                    <a href="$Link" class="btn btn-sm btn-warning stretched-link">Learn More</a>
                </div>
            </div>
        <% end_loop %>
	</div>
<% end_if %>
<!-- end Loop Children -->
