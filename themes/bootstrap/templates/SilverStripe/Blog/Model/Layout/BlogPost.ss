<% include Header %>

<main id="main-content" class="container-xl">
	<div class="row">
		<div class="col-lg-8 offset-lg-2">
			<div class="blog__content mb-6">
                <div class="py-3 py-md-5 text-center">
                     <% include SilverStripe\\Blog\\EntryMeta %>
					<h1 class="display-4 pb-4">$Title</h1>
                    <hr>
                </div>
				<% if $Photo %>
					<img src="$Photo.ScaleMaxWidth(400).URL" class="img-thumbnail float-right mb-3 ml-3 mr-lg-n8 mr-xl-n9" alt="Title" />
				<% end_if %>

				<% if $Summary %>
					<div class="lead">$Summary</div>
				<% end_if %>

				$Content

				$Form
				$CommentsForm
			</div>
		</div>
	</div>
</main>

