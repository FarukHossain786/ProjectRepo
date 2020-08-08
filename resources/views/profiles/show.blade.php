@extends('layouts.app')

@section('content')
    <header>
        

    </header>
    <hr>
    @include('_timeline',[
        'tweets'=>$user->tweets
    ]);

@endsection
