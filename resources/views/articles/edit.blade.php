@extends ('layout')

@section('bootstrap')
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
@endsection

@section ('content')
<div id="wrapper">
	<div id="page" class="container">
		<h1>Update Article</h1>

		<form action="/articles/{{ $article->id }}" method="post" accept-charset="utf-8">
			@csrf
			@method('put')
			<div class="field">
				<label class="form-lable t-b" for="title">Title</label>
				<div class="form">
					<input class="form-control" type="text" name="title" value="{{ $article->title }}" placeholder="Title" id="title">
				</div>
				
			</div>
			<div class="field">
				<label class="form-lable t-b" for="excerpt">Excerpt</label>
				<div class="form">
					<input class="form-control" type="text" name="excerpt" value="{{ $article->excerpt }}" placeholder="Excerpt" id="excerpt">
				</div>
				
			</div>
			<div class="field">
				<label class="form-lable t-b" for="title">Body</label>
				<div class="form">
					<textarea class="form-control" name="body" id="body">{{ $article->body }}</textarea>
				</div>
				
			</div>

			<div class="filed is-grouped">
				<div class="form">
					<button class="button is-link" type="submit">Update</button>
				</div>
			</div>
		</form>
	</div>
</div>
@endsection