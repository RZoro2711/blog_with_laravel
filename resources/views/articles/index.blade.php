@extends("layouts.app")

@section("content")
    <div class="container w-50">

        @if (session("info"))
            <div class="alert alert-info">
                {{session('info')}}
            </div>
        @endif
        @foreach ($articles as $article)
            <div class="card mb-2">
                <div class="card-body">
                    <h3 class="card-title" style="font-size: 22px;font-weight: bolder">{{$article->title}}</h3>
                    <div class="text-muted small">
                        <b class="text-success">{{ $article->user->name }}</b>
                        Category: <b>{{ $article->category->name}}</b>
                        Comments: <b>{{ count($article->comments)}}</b>
                        {{$article->created_at->diffForHumans()}}
                    </div>
                    <p class="w-25" style="font-style: itelic;text-align:justify">{{ $article->body}}</p>
                    <a href="{{url("/articles/detail/$article->id")}}">View Detail</a>
                </div>
            </div>
        @endforeach

        {{-- link --}}
        <div style="margin:auto;display:block;">
        {{$articles->links()}}

        </div>
    </div>
@endsection
