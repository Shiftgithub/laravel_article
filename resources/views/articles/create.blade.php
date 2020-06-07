@extends ('layout')

@section('bootstrap')
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
@endsection

@section ('content')
<div id="wrapper">
	<div id="page" class="container">
		<h1>New Article</h1>

		<form action="/articles" method="post" accept-charset="utf-8">
			@csrf
			<div class="field">
				<label class="form-lable t-b" for="title">Title</label>
				<div class="form">
					<input 
						class="form-control @error('title') danger @enderror" 
						type="text" 
						name="title" 
						value="{{ old('title') }}" 
						placeholder="Title" 
						id="title"
					>
					@error('title')
					<p class="help danger">{{ $errors->first('title') }}</p>
					@enderror
				</div>
				
			</div>
			<div class="field">
				<label class="form-lable t-b" for="excerpt">Excerpt</label>
				<div class="form">
					<input
						class="form-control @error('excerpt') danger @enderror"  
						type="text" 
						name="excerpt"
						id="excerpt"
						value="{{ old('excerpt') }}"
					>
					@error('excerpt')
					<p class="help danger">{{ $errors->first('excerpt') }}</p>
					@enderror
				</div>
				
			</div>
			<div class="field">
				<label class="form-lable" for="title">Body</label>
				<div class="form ">
					<textarea 
						class="form-control @error('body') danger @enderror" 
						name="body" 
						id="body">{{ old('body') }}</textarea>
				</div>
				@error('body')
					<p class="help danger">{{ $errors->first('body') }}</p>
				@enderror
				
			</div>

			<div class="field">
				<label class="form-lable" for="title">Tags</label>
				<div class="">
					<select name="tags[]" class="custom-select" multiple>
						@foreach ($tags as $tag)
						<option value="{{ $tag->id }}"> {{ $tag->name }}</option>
						@endforeach
					</select>
				</div>
				@error('tags')
					<p class="help danger">{{ $message }}</p>
				@enderror
				
			</div>

			<div class="filed is-grouped">
				<div class="form">
					<button class="button is-link" type="submit">Create</button>
				</div>
			</div>
		</form>
	</div>
</div>
@endsection