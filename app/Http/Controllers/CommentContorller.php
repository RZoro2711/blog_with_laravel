<?php

namespace App\Http\Controllers;
use App\Models\Comment;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Gate;

class CommentContorller extends Controller
{
    public function delete($id){
        $comment = Comment::find($id);
        if(Gate::allows("comment_delete", $comment)){
            $comment->delete();
            return redirect("/articles")->with("info", "An comment deleted");
        }
        return back()->with("info", "Unauthorize to delete");
    }

    public function create(){
        $comment = new Comment;
        $comment->content = request()->content;
        $comment->article_id = request()->article_id;
        $comment->user_id = auth()->user()->id;
        $comment->save();
        return back()->with("info", "A comment added");

    }
}
