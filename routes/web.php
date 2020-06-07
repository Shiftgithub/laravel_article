<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function(){
	return view('welcome');
});

Route::get('/about', function(){
	return view('about',[
		'articles' => App\Article::take(3)->latest()->get()
	]);
});

Route::get('/articles', 'ArticleController@index')->name('articles.index');

Route::post('/articles', 'ArticleController@store');

Route::get('/articles/create', 'ArticleController@create');

Route::get('/articles/{article}', 'ArticleController@show')->name('articles.show');

Route::get('/articles/{article}/edit', 'ArticleController@edit');

Route::put('/articles/{article}', 'ArticleController@update');

Route::delete('/articles/{article}', 'ArticleController@destroy');


