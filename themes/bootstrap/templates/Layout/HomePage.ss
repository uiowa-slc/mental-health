<% include Header %>

<!-- Photo Image Feature -->
<% if $Photo %>
    <section class="hp-featuredimage">
        <div class="hp-featuredimage__imgwrap">
            <picture>
                <source media="(max-width: 767px)" srcset="$Photo.FocusFill(800,400).URL">
                <source media="(min-width: 768px)" srcset="$Photo.FocusFill(1300,500).URL">
                <img src="$Photo.FocusFill(1300,600).URL" alt="$Photo.Title">
            </picture>
        </div>
        <div class="hp-featuredimage__contentwrap pt-3 pt-md-0">
            <div class="container-xl py-md-3">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="">
                            <h1 class="mb-2 display-3">$SiteConfig.Title</h1>
                            <ul class="nav justify-content-center flex-column flex-md-row">
                                <% if $FeaturedPageOne %>
                                    <li class="nav-item m-1">
                                        <a class="nav-link btn btn-warning btn-sm" href="$FeaturedPageOne.Link">$FeaturedPageOne.Title</a>
                                    </li>
                                <% end_if %>
                                <% if $FeaturedPageTwo %>
                                    <li class="nav-item m-1">
                                        <a class="nav-link btn btn-warning btn-sm" href="$FeaturedPageTwo.Link">$FeaturedPageTwo.Title</a>
                                    </li>
                                <% end_if %>
                                <% if $FeaturedPageThree %>
                                    <li class="nav-item m-1">
                                        <a class="nav-link btn btn-warning btn-sm" href="$FeaturedPageThree.Link">$FeaturedPageThree.Title</a>
                                    </li>
                                <% end_if %>
                                <% if $FeaturedPageFour %>
                                    <li class="nav-item m-1">
                                        <a class="nav-link btn btn-warning btn-sm" href="$FeaturedPageFour.Link">$FeaturedPageFour.Title</a>
                                    </li>
                                <% end_if %>
                                <% if $FeaturedPageFive %>
                                    <li class="nav-item m-1">
                                        <a class="nav-link btn btn-warning btn-sm" href="$FeaturedPageFive.Link">$FeaturedPageFive.Title</a>
                                    </li>
                                <% end_if %>
                            </ul>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
<% end_if %>

<main class="container-xl my-3 my-lg-5 " id="content">
    <div class="row mt-5">
        <div class="col-md-10 offset-md-1">
            <div class="">
                $Content
                $Form
                $PageComments
            </div>
        </div>
    </div>

    <div class="row py-4 mx-lg-n2 featured-cards">
        <% if $FeaturedPageOne %>
            <div class="col-sm-6 col-lg-4 mb-3 px-lg-2">
                <div class="card bg-dark text-white">
                    <% if $FeaturedPageOne.Photo %>
                        <img src="$FeaturedPageOne.Photo.FocusFill(600,400).URL" alt="$FeaturedPageOne.Photo.Title" class="card-img-top img-fluid" loading="lazy">
                    <% else %>
                        <img src="{$ThemeDir}/dist/images/dosl.gif" alt="$FeaturedPageOne.Title" class="card-img-top" loading="lazy" />
                    <% end_if %>
                    <div class="card-img-overlay  d-flex flex-column justify-content-end">
                        <h5 class="card-title">$FeaturedPageOne.Title</h5>
                        <a href="$FeaturedPageOne.Link" class="btn btn-sm btn-warning btn-block stretched-link">Learn More</a>
                    </div>
                </div>
            </div>
        <% end_if %>
        <% if $FeaturedPageTwo %>
            <div class="col-sm-6 col-lg-4 mb-3 px-lg-2">
                <div class="card bg-dark text-white">
                    <% if $FeaturedPageTwo.Photo %>
                        <img src="$FeaturedPageTwo.Photo.FocusFill(600,400).URL" alt="$FeaturedPageTwo.Photo.Title" class="card-img-top" loading="lazy">
                    <% else %>
                        <img src="{$ThemeDir}/dist/images/dosl.gif" alt="$FeaturedPageTwo.Title" class="card-img-top" loading="lazy" />
                    <% end_if %>
                    <div class="card-img-overlay  d-flex flex-column justify-content-end">
                        <h5 class="card-title">$FeaturedPageTwo.Title</h5>
                        <a href="$FeaturedPageTwo.Link" class="btn btn-sm btn-warning btn-block stretched-link">Learn More</a>
                    </div>
                </div>
            </div>
        <% end_if %>
        <% if $FeaturedPageThree %>
            <div class="col-sm-6 col-lg-4 mb-3 px-lg-2">
                <div class="card bg-dark text-white">
                    <% if $FeaturedPageThree.Photo %>
                        <img src="$FeaturedPageThree.Photo.FocusFill(600,400).URL" alt="$FeaturedPageThree.Photo.Title" class="card-img-top" loading="lazy">
                    <% else %>
                        <img src="{$ThemeDir}/dist/images/dosl.gif" alt="$FeaturedPageThree.Title" class="card-img-top" loading="lazy" />
                    <% end_if %>
                    <div class="card-img-overlay  d-flex flex-column justify-content-end">
                        <h5 class="card-title">$FeaturedPageThree.Title</h5>
                        <a href="$FeaturedPageThree.Link" class="btn btn-sm btn-warning btn-block stretched-link">Learn More</a>
                    </div>
                </div>
            </div>
        <% end_if %>
        <% if $FeaturedPageFour %>
            <div class="col-sm-6 col-lg-4 mb-3 px-lg-2">
                <div class="card bg-dark text-white">
                    <% if $FeaturedPageFour.Photo %>
                        <img src="$FeaturedPageFour.Photo.FocusFill(600,400).URL" alt="$FeaturedPageFour.Photo.Title" class="card-img-top" loading="lazy">
                    <% else %>
                        <img src="{$ThemeDir}/dist/images/dosl.gif" alt="$FeaturedPageFour.Title" class="card-img-top" loading="lazy" />
                    <% end_if %>
                    <div class="card-img-overlay  d-flex flex-column justify-content-end">
                        <h5 class="card-title">$FeaturedPageFour.Title</h5>
                        <a href="$FeaturedPageFour.Link" class="btn btn-sm btn-warning btn-block stretched-link">Learn More</a>
                    </div>
                </div>
            </div>
        <% end_if %>
        <% if $FeaturedPageFive %>
          <div class="col-sm-6 col-lg-4 mb-3 px-lg-2">
              <div class="card bg-dark text-white">
                  <% if $FeaturedPageFive.Photo %>
                      <img src="$FeaturedPageFive.Photo.FocusFill(600,400).URL" alt="$FeaturedPageFive.Photo.Title" class="card-img-top" loading="lazy">
                  <% else %>
                      <img src="{$ThemeDir}/dist/images/dosl.gif" alt="$FeaturedPageFive.Title" class="card-img-top" loading="lazy" />
                  <% end_if %>
                  <div class="card-img-overlay  d-flex flex-column justify-content-end">
                      <h5 class="card-title">$FeaturedPageFive.Title</h5>
                      <a href="$FeaturedPageFive.Link" class="btn btn-sm btn-warning btn-block stretched-link">Learn More</a>
                  </div>
              </div>
          </div>
      <% end_if %>
    </div><!-- end .row -->
</main>
    





