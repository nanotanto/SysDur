<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
// use Illuminate\Database\Eloquent\SoftDeletes;

class Fp4Form extends Model
{
    // use SoftDeletes;

    // protected $dates = ['deleted_at'];

     /**
     * The attributes that are mass assignable.
     *	
     * @var array
     */
    protected $fillable = [
        'user_id',
        'department_id',
        'date',
        'jenis',
        'jumlah',
        'dokumen',
        'alasan',
        'file',
        'status',
        'analisa',
        'admin_id',
        'date_end'
    ];    

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function admin()
    {
        return $this->belongsTo('App\User');
    }


}
