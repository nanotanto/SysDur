<?php

namespace App\Http\Controllers;

use App\Document;
use Illuminate\Http\Request;

use App\DocStatus;
use Carbon\Carbon;
use Auth;

class DocStatusController extends Controller
{
	public function status($id)
    {
        $docstatus = DocStatus::where('document_id',$id)->get();
        return response()->json($docstatus);
    }

    public function updatedocstatus(Request $request, document $document)
    {        
    	$id = $request->input('id');
    	$current = Carbon::now();
        $user = Auth::user();

        $inputstatus['document_id'] = $id;
        if ($user->position_id == 3) {
        	$inputstatus['value'] = 'Checked';
        } elseif ($user->position_id == 4) {
        	$inputstatus['value'] = 'Approved';        	
        }         
        $inputstatus['details'] = $user->name;
        $inputstatus['date'] = $current;

        DocStatus::create($inputstatus);

        $document = Document::find($id);

        if (!empty($user->parent_id)) {
            $user->parent->notify(new \App\Notifications\StatusDocument($document));            
        }         

        
        return redirect('/')
                        ->with('success','Form submit successfully.');

    }

}