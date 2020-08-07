<?php

namespace App\Http\Controllers;

use App\Tweet;
use Illuminate\Http\Request;

class TweetController extends Controller
{
    public function index()
    {
        $tweets = Tweet::latest()->get();
        return view('home',[
            'tweets'=>$tweets
        ]);

    }
    
    public function store(){
        request()->validate(['body' =>'required|max:255']);
        Tweet::create([
            'user_id' =>auth()->id(),
            'body'    =>request('body')
        ]);
        return redirect('/home');

    }
    
}
