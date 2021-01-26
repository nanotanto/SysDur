<?php

namespace App\Http\Controllers;

use App\Fp4Form;
use Illuminate\Http\Request;

use App\Fp4Status;

class Fp4StatusController extends Controller
{
	public function status($id)
    {
        $fp4status = Fp4Status::where('fp4_form_id',$id)->get();
        return response()->json($fp4status);
    }
}