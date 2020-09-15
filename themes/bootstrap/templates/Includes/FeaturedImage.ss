<section class="featuredimage">
    <div class="featuredimage__imgwrap">
        <picture>
            <source media="(max-width: 767px)" srcset="$Photo.FocusFill(800,400).URL">
            <source media="(min-width: 768px)" srcset="$Photo.FocusFill(1300,500).URL">
            <img src="$Photo.FocusFill(1300,600).URL" alt="$Photo.Title">
        </picture>
    </div>
    <div class="featuredimage__contentwrap pt-3 pt-md-0">
        <div class="container-xl py-md-3">
            <div class="row">
                <div class="<% if $Menu(2) %>col-lg-12 <% else %>col-md-10 offset-md-1<% end_if %>">
                    $Breadcrumbs
                    <h1>$Title</h1>
                </div>
            </div>
            
        </div>
    </div>
</section>