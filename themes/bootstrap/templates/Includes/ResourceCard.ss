<div class="card mb-5 rounded-sm">
    <h4 class="card-header bg-warning">$Title</h4>
    <div class="card-body">
        <img src="https://via.placeholder.com/150" alt="" class="float-right ml-3 mb-3">
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
                    <a href="$Twitter" target="_blank" class="text-dark">
                        <i class="fab fa-twitter-square fa-2x pr-2 align-middle"></i>
                    </a>
                <% end_if %>
                <% if $Facebook %>
                    <a href="$Facebook" target="_blank" class="text-dark">
                        <i class="fab fa-facebook-square fa-2x pr-2 align-middle"></i>
                    </a>
                <% end_if %>
                 <% if $Instagram %>
                    <a href="$Instagram" target="_blank" class="text-dark">
                        <i class="fab fa-instagram-square fa-2x pr-2 align-middle"></i>
                    </a>
                <% end_if %>
            </li>
        <% end_if %>
    </ul>
</div>