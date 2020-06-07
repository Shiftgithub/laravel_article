<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Article;
use App\Tag;

class ArticleController extends Controller
{	
	public function index()
	{
        if (request('tag')) {
            $articles = Tag::where('name', request('tag'))
            ->firstOrFail()->articles;
        } else {
            $articles = Article::latest()->get();
        }

		return view('articles.index', ['articles'=> $articles]);
	}

    public function show(Article $article)
    {

        return view('articles.show', ['article'=> $article]);
    }

    public function create()
    {
         return view('articles.create',[
            'tags' => Tag::all()
         ]);
    }

    public function store(Article $article)
    {
        
    	//Article::create($this->validateArticle());
        $this->validateArticle();

        $article = new Article(request(['title', 'excerpt', 'body']));

        $article->user_id=1;
        $article->save();

        $article->tags()->attach(request('tags'));
   
        return redirect(route('articles.index'))->with('success','Article created successfully.');
    }


    public function edit(Article $article)
    {
        return view('articles.edit',['article' => $article ]);
    }

    public function update(Article $article)
    {
        $article->update($this->validateArticle());

        return redirect(route('articles.show', $article))->with('success','Article updated successfully');
    }

    public function destroy(Article $article)
    {

        $article->delete();

        return redirect()->route('articles.index')
        ->with('success','Article deleted successfully');
    }

    public function validateArticle(){
        return request()->validate([
            'title' => ['required', 'min:3', 'max:255'],
            'excerpt' => 'required',
            'body' => 'required',
            'tags'=> 'exists:tags,id'
        ]);
    }
}
