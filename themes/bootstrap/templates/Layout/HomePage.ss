<!-- <% include Header %> -->
<div class="jumbotron jumbotron-fluid bg-dark pb-lg-9">
    <div class="container-xl position-relative">
        <h1 class="display-4 text-light">$Title</h1>
        <div class="text-light">$Content</div>
    </div>
  </div>
<main class="container-xl">
	<div class="row">
		<div class="col">
            <div class="row row-cols-2 mt-lg-n9">
                <% if $Resources %>
                    <% loop $Resources %>
                        <div class="col">
                            <% include ResourceCard %>
                        </div>
                     <% end_loop %>
                <% end_if %>
            </div>			

			$Form
			$PageComments

		</div>
	</div>
</main>

