<div class="card mb-5 rounded-sm">
    <h3 class="h4 card-header bg-warning">
        $Title <% if $PopulationServed %><span class="card-header__pop">Populations Served: $PopulationServed</span><% end_if %>
    </h3>
    <div class="card-body">
        <% if $Logo %>
            <img src="$Logo.ScaleWidth(350).URL" alt="$Title" class="float-right ml-3 mb-3 resource-logo">
        <% end_if %>
        $Content
        <h5>Services</h5>
        $Services      
    </div>
    <ul class="list-group list-group-flush">
        <li class="list-group-item"><strong>Contact Info</strong></li>
        <% if $Website %>
            <li class="list-group-item">Website: <a href="$Website">$Website</a></li>
        <% end_if %>
        <% if $PhoneNumber %>
            <li class="list-group-item">Phone: $PhoneNumber</li>
        <% end_if %>
        <% if $EmailAddress %>
            <li class="list-group-item">Email: <a href="mailto:$EmailAddress">$EmailAddress</a></li>
        <% end_if %>
        <% if $Twitter || $Facebook || $Instagram %>
            <li class="list-group-item">Social: 
                 <% if $Twitter %>
                    <a href="$Twitter" class="social-link">
                        <i class="fab fa-twitter-square fa-2x pr-2 align-middle" aria-hidden="true"></i>
                        <span class="">Twitter</span>
                    </a>
                <% end_if %>
                <% if $Facebook %>
                    <a href="$Facebook" class="social-link">
                        <i class="fab fa-facebook-square fa-2x pr-2 align-middle" aria-hidden="true"></i>
                        <span class="">Facebook</span>
                    </a>
                <% end_if %>
                 <% if $Instagram %>
                    <a href="$Instagram" class="social-link">
                        <i class="fab fa-instagram-square fa-2x pr-2 align-middle" aria-hidden="true"></i>
                        <span class="">Instagram</span>
                    </a>
                <% end_if %>
            </li>
        <% end_if %>
    </ul>
</div>