<?php

namespace App\Http\Controllers;

use App\Fp4Form;
use Illuminate\Http\Request;

use File;

use Auth;
use App\User;

class fp4formController extends Controller
{ 
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    function __construct()
    {
        $this->middleware('auth');
    }

    public function open()
    {
        $fp4fprm = Fp4Form::where('status',0)->get();
        return response()->json($fp4fprm);
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $fp4forms = Fp4Form::latest()->paginate(5);
        return view('fp4forms.index',compact('fp4forms'))
            ->with('i', (request()->input('page', 1) - 1) * 5);
    }
    
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('fp4forms.create');
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
            'no' => 'required'
        ]);
        
        $input = $request->all();

        if(!empty($input['file'])){ 
            $fileName1 = time().'.'.$request->file->getClientOriginalName();
            $request->file->move(public_path('uploads'), $fileName1);
            $input['file'] = $fileName1;
        }else{
            $input['file'] = "";    
        }
        
        $user = Auth::user();
        $input['user_id'] = $user->id;

        $fp4form = Fp4Form::create($input);
        
        $user->parent->notify(new \App\Notifications\StatusDocument($document));
        
        return redirect()->route('fp4forms.index')
                        ->with('success','fp4form created successfully.');
    }
    
    /**
     * Display the specified resource.
     *
     * @param  \App\fp4form $fp4form
     * @return \Illuminate\Http\Response
     */
    public function show(fp4form $fp4form)
    {
        return view('fp4forms.show',compact('fp4form'));
    }
    
    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\fp4form $fp4form
     * @return \Illuminate\Http\Response
     */
    public function edit(fp4form $fp4form)
    {
        return view('fp4forms.edit',compact('fp4form'));
    }
    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\fp4form $fp4form
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, fp4form $fp4form)
    {
         request()->validate([
            'name' => 'required',
            'no' => 'required',
            'file' => 'image|mimes:jpeg,png,jpg|max:2048',
            'file2' => 'image|mimes:jpeg,png,jpg|max:2048'
        ]);               

        $input = $request->all();           
        
        if(!empty($input['file'])){ 
            $fileName1 = time().'.'.$request->file->getClientOriginalName();
            $request->file->move(public_path('uploads'), $fileName1);
            $input['file'] = $fileName1;
        }else{
            $input['file'] = "";    
        }
    
        $fp4form->update($input);
    
        $user = Auth::user();
        if (!empty($user->parent_id)) {
            $user->parent->notify(new \App\Notifications\StatusDocument($document));
        }        
        

        return redirect()->route('fp4forms.index')
                        ->with('success','fp4form updated successfully');
    }
    
    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\fp4form $fp4form
     * @return \Illuminate\Http\Response
     */
    public function destroy(fp4form $fp4form)
    {
        // dd($fp4form->file);

        if(File::exists(public_path('uploads/'.$fp4form->file))){
            File::delete(public_path('uploads/'.$fp4form->file));
        }else{
            dd('File does not exists.');
        }

        $fp4form->delete();
    
        return redirect()->route('fp4forms.index')
                        ->with('success','fp4form deleted successfully');
    }

    public function submit(Request $request, fp4form $fp4form)
    {
        $id = $request->input('id');
        $fp4form = Fp4Form::where('id',$id)->first();

        $user = Auth::user();
        if (!empty($user->parent_id)) {
            $user->parent->notify(new \App\Notifications\StatusDocument($document));
        }        
        
    
        return redirect()->route('fp4forms.index')
                        ->with('success','fp4form submit successfully');
    }

}
