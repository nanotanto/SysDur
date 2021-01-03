<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Document extends Model
{
     /**
     * The attributes that are mass assignable.
     *	
     * @var array
     */
    protected $fillable = [
        'no', 'name',
        'lingkup',
        'tujuan',
        'definisi',
        'uraian',
        'prosedur',
        'lampiran',
        'terkait',
        'file1',
        'file2'
    ];    
}
