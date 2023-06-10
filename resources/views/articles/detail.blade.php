@extends("layouts.app")

@section("content")
    <div class="container w-50">
            <div class="card mb-2 border-success">
                <div class="card-body">
                    <h3 class="card-title" style="font-size: 22px;font-weight: bolder">{{$article->title}}</h3>
                    <div class="text-muted small">
                        Category: <b>{{ $article->category->name}}</b>

                        {{$article->created_at->diffForHumans()}}
                    </div>
                    <p class="w-25" style="font-style: itelic;text-align:justify">{{ $article->body}}</p>
                    <div>
                        @auth
                            @can("article_delete", $article)
                                <a href="{{url("/articles/delete/$article->id")}}" class="btn btn-sm btn-warning">Delete</a>
                            @endcan
                            <a href="{{url("/articles/edit/$article->id")}}" class="btn btn-sm btn-warning">Edit</a>
                        @endauth
                    </div>

            </div>

            <h4 class="mt-4 ms-1">Comments ({{count($article->comments)}})</h4>
            <ul class="list-group">
                @foreach ($article->comments as $comment)
                <li class="list-group-item pe-2">
                    <b class="text-success">{{ $comment->user->name }}</b> -
                    @auth
                        @can("comment_delete", $comment)
                            <a href="{{url("/comments/delete/$comment->id")}}" class="btn-close float-end"></a>
                        @endcan
                    @endauth
                        {{$comment->content}}
                </li>
                @endforeach

            </ul>
    </div>
            @auth
                <form action="{{ url("/comments/add")}}" method="post">
                    @csrf
                    <input type="hidden" name="article_id" value="{{ $article->id }}">
                    <textarea name="content" class="form-control my-1" placeholder="Your Comment"></textarea>
                    <button class="btn btn-primary">Add Comment</button>
                </form>
            @endauth




@endsection
