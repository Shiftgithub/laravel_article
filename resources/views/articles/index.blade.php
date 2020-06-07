@extends ('layout')

@section ('content')
<div id="wrapper">
	<div id="page" class="container">
		@if ($message = Session::get('success'))
        	<div class="alert" id="message" >
            	<p style="font-size:30px;">{{ $message }}</p>
        	</div>
    	@endif

		@forelse ($articles as $article)
		<div id="content">
			<div class="title">
				<h2>
					<a href="{{ route('articles.show', $article) }}" title="">
						{{ $article->title }}
					</a>
					
				</h2>
				
			</div>
			<p><img 
					src="images/banner.jpg" 
					alt="" 
					class="image image-full" 
				/> 
			</p>

			<span class="byline">
					{!! $article->excerpt !!}
			</span> 

			
		</div>	
		@empty
		 <p>No relevant articles yet.</p>
		@endforelse
	</div>
</div>


@endsection

@section('script')
<script>
	function myFunction() {
	  setTimeout(function(){
	  	document.getElementById("message").style.visibility = "hidden"; 

	  }, 5000);
	}

window.onload = myFunction();
</script>
@endsection