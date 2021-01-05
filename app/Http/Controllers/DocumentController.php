<?php

namespace App\Http\Controllers;

use App\Document;
use Illuminate\Http\Request;

use Auth;

class DocumentController extends Controller
{ 
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    function __construct()
    {
         $this->middleware('permission:document-list|document-create|document-edit|document-delete', ['only' => ['index','show']]);
         $this->middleware('permission:document-create', ['only' => ['create','store']]);
         $this->middleware('permission:document-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:document-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $documents = Document::latest()->paginate(5);
        return view('documents.index',compact('documents'))
            ->with('i', (request()->input('page', 1) - 1) * 5);
    }
    
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('documents.create');
    }
    
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate([
            'name' => 'required',
            'no' => 'required',
            'file1' => 'image|mimes:jpeg,png,jpg|max:2048',
            'file2' => 'image|mimes:jpeg,png,jpg|max:2048'
        ]);
        
        $input = $request->all();

        if(!empty($input['file1'])){ 
            $fileName1 = time().'.'.$request->file1->extension();
            $request->file1->move(public_path('uploads'), $fileName1);
            $input['file1'] = $fileName1;
        }else{
            $input['file1'] = "";    
        }

        if(!empty($input['file1'])){ 
            $fileName2 = time().'.'.$request->file2->extension();
            $request->file2->move(public_path('uploads'), $fileName2);
            $input['file2'] = $fileName2;
        }else{
            $input['file2'] = "";    
        }
        
        $user = Auth::user();
        $input['user_id'] = $user->id;

        $document = Document::create($input);
        
        $user->parent->notify(new \App\Notifications\StatusDocument($document));
        
        return redirect()->route('documents.index')
                        ->with('success','Document created successfully.');
    }
    
    /**
     * Display the specified resource.
     *
     * @param  \App\Document $document
     * @return \Illuminate\Http\Response
     */
    public function show(Document $document)
    {
        return view('documents.show',compact('document'));
    }
    
    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Document $document
     * @return \Illuminate\Http\Response
     */
    public function edit(Document $document)
    {
        return view('documents.edit',compact('document'));
    }
    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Document $document
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Document $document)
    {
         request()->validate([
            'name' => 'required',
            'no' => 'required',
            'file1' => 'image|mimes:jpeg,png,jpg|max:2048',
            'file2' => 'image|mimes:jpeg,png,jpg|max:2048'
        ]);               

        $input = $request->all();           
        
        if(!empty($input['file1'])){ 
            $fileName1 = time().'.'.$request->file1->extension();
            $request->file1->move(public_path('uploads'), $fileName1);
            $input['file1'] = $fileName1;
        }else{
            $input['file1'] = "";    
        }

        if(!empty($input['file1'])){ 
            $fileName2 = time().'.'.$request->file2->extension();
            $request->file2->move(public_path('uploads'), $fileName2);
            $input['file2'] = $fileName2;
        }else{
            $input['file2'] = "";    
        }
    
        $document->update($input);
    
        $user = Auth::user();
        if (!empty($user->parent_id)) {
            $user->parent->notify(new \App\Notifications\StatusDocument($document));
        }        
        

        return redirect()->route('documents.index')
                        ->with('success','Document updated successfully');
    }
    
    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Document $document
     * @return \Illuminate\Http\Response
     */
    public function destroy(Document $document)
    {
        $document->delete();
    
        return redirect()->route('documents.index')
                        ->with('success','Document deleted successfully');
    }
}
