<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Artikel extends Model{
    protected $table = 'artikel';
    public $primaryKey = 'id';

    function seller(){
        return $this->belongsTo(User::class, 'id_user');
    }

}