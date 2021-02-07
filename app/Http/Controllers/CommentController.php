<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Comment;
use App\Document;
use App\User;

use Auth;

class CommentController extends Controller
{
    
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, Document $document)
    {
        $id = $request->input('document_id');
        $document = Document::where('id',$id)->first();

        $user_id = $request->input('user_id');

        $user = User::where('id', $user_id)->first();

        // $user = Auth::user();
        // if (!empty($user->parent_id)) {
            $user->notify(new \App\Notifications\StatusDocument($document));
        // }   

    	$request->validate([
            'body'=>'required',
        ]);
   
        $input = $request->all();
        $input['user_id'] = Auth::user()->id;
    
        Comment::create($input);
   
        // return back();
        return redirect('/')
        ->with('success','Request revise document');
    }
}
