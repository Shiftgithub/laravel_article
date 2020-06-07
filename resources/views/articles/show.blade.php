@extends ('layout')


@section ('content')
<div id="wrapper">
	<div id="page" class="container row">
		@if ($message = Session::get('success'))
        	<div class="alert" id="message" >
            	<p style="font-size:30px;">{{ $message }}</p>
        	</div>
    	@endif
		<div id="content col-6">
			<div class="title">
				<h2>{{ $article->title }}</h2>
				<span class="byline">
					{{ $article->excerpt}}
				</span> 
			</div>
			<p><img 
					src="/images/banner.jpg" 
					alt="" 
					class="image image-full" 
				/> 
			</p>
			<span>
				{{ $article->body }}
			</span>

			<p class="" style="margin-top: 10px">
				@foreach ($article->tags as $tag)
					<a href="/articles?tag={{ $tag->name }}" title="">
						{{ $tag->name }}
					</a>
				@endforeach
			</p>
    		
    		<button type="">
                	<a 
					class="btn btn-primary" 
					href="/articles/{{ $article->id }}/edit"
					>
					Edit

					</a>
            </button>
            <form action="/articles/{{ $article->id }}" method="POST">
   				@csrf
                @method('DELETE')
                
   
                <button type="submit" class="btn btn-danger">Delete</button>
            </form>    
        	
							
		</div>
	</div>
</div>
@endsection